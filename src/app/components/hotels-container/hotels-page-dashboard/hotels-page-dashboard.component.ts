import { Component, EventEmitter, Inject, Input, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../app.config';
import { IAppConfig } from '../../../app.config.shared';
import {
  CommonAuthenticationService, CommonDataSharedService, CommonRequestResponseService
} from '../../../services/common-services';
import { UploadOutput, UploadInput, UploadFile, humanizeBytes, UploaderOptions } from 'ngx-uploader';
@Component({
  selector: 'app-hotels-page-dashboard',
  templateUrl: './hotels-page-dashboard.component.html',
  styleUrls: ['./hotels-page-dashboard.component.css']
})
export class HotelsPageDashboardComponent implements OnInit {

  options: UploaderOptions;
  formData: FormData;
  files: UploadFile[];
  uploadInput: EventEmitter<UploadInput>;
  humanizeBytes: Function;
  dragOver: boolean;
  fileInProgress = '';
  uploadFile: any;
  hasBaseDropZoneOver = false;
  uploadUrl= '';
  profilePhotoApiStatus = '';
  hotelProfilePhotoData;
  loadProfileStatus = false;
  userContactData;
  constructor(@Inject(APP_CONFIG) private config: IAppConfig,
    private _commonRequestResponseService: CommonRequestResponseService,
    public _commonAuthenticationService: CommonAuthenticationService,
    public _commonDataSharedService: CommonDataSharedService) {
      this.files = []; // local uploading files array
      this.uploadInput = new EventEmitter<UploadInput>(); // input events, we use this to emit data to ngx-uploader
      this.humanizeBytes = humanizeBytes;
     }
    showForm = true;
  ngOnInit() {
    this.uploadUrl = this.config.apiEndpoint;
    this.getUserContactData();
    this.getProfilePhoto();
  }

  onUploadOutput(output: UploadOutput): void {
    if (output.type === 'allAddedToQueue') { // when all files added in queue
      // uncomment this if you want to auto upload files when added
      // const event: UploadInput = {
      //   type: 'uploadAll',
      //   url: '/upload',
      //   method: 'POST',
      //   data: { foo: 'bar' }
      // };
      // this.uploadInput.emit(event);
      const event: UploadInput = {
        type: 'uploadAll',
        url: this.uploadUrl + 'hotel-profile-photo.php?action=upload_hotel_profile_image',
        method: 'POST',
        data: { foo: 'bar' }
      };
      this.uploadInput.emit(event);
    } else if (output.type === 'addedToQueue'  && typeof output.file !== 'undefined') { // add file to array when added
      this.files.push(output.file);
    } else if (output.type === 'uploading' && typeof output.file !== 'undefined') {
      // update current data in files array for uploading file
      const index = this.files.findIndex(file => typeof output.file !== 'undefined' && file.id === output.file.id);
      this.files[index] = output.file;
      this.fileInProgress =  'progress';
      console.log('this.files--', this.files);
    } else if (output.type === 'removed') {
      // remove file from array when removed
      this.files = this.files.filter((file: UploadFile) => file !== output.file);
    } else if (output.type === 'dragOver') {
      this.dragOver = true;
    } else if (output.type === 'dragOut') {
      this.dragOver = false;
    } else if (output.type === 'drop') {
      this.dragOver = false;
    } else if (output.type === 'done') {
      this.fileInProgress =  'done';
      console.log('file uploaded');
      this.saveProfilePhoto();
    }
  }

  startUpload(): void {
    const event: UploadInput = {
      type: 'uploadAll',
      url: this.uploadUrl + 'hotel-profile-photo.php?action=upload_hotel_profile_image',
      method: 'POST',
      data: { foo: 'bar' }
    };

    this.uploadInput.emit(event);
  }

  cancelUpload(id: string): void {
    this.uploadInput.emit({ type: 'cancel', id: id });
  }

  removeFile(id: string): void {
    this.uploadInput.emit({ type: 'remove', id: id });
  }

  removeAllFiles(): void {
    this.uploadInput.emit({ type: 'removeAll' });
    this.uploadInput.emit({ type: 'cancelAll' });
  }

  saveProfilePhoto() {
    // value.map((data, index) => data.userId !== id ? data.userName : data.userId).filter(function (e) { return e !== id });
    const url = 'hotel-profile-photo.php?action=update_profile_photo';
    const validInputJson = this.prepareProfilePhotoInputJson();
    console.log('validInputJson--', validInputJson);
    this._commonRequestResponseService.post(url, validInputJson)
    .subscribe((res) => {
      if (res) {
        this.profilePhotoApiStatus = 'update';
        this.getProfilePhoto();
      }
    }, (err) => {
      this.profilePhotoApiStatus = 'error';
      console.log('got Error', err);
    });
  }

  prepareProfilePhotoInputJson() {
    const inputJson = {
      user_id : 3,
      user_role_id : 2,
      logo_info : JSON.stringify(this.prepareProfilePhotoJson())
    };
    return inputJson;
  }

  prepareProfilePhotoJson() {
    const resultString = this.files.map((data) =>  data['responseStatus'] === 200 ? data.response : '').filter((e) => e !== '' );
    return resultString;
  }
  getUserContactData() {
    const inputJson = {
      user_id : 3,
      user_role_id : 2
    };
    this._commonRequestResponseService.post('user.php?action=get_user_profile_contact_data', inputJson)
    .subscribe((res) => {
      console.log('api response--', res);
      if (res && res.length > 0) {
        console.log('userContactData--', res);
        this.userContactData = res[0];
      }
    }, (err) => {
      console.log('got Error', err);
    });
  }
  getProfilePhoto() {
    const inputJson = {
      user_id : 3,
      user_role_id : 2
    };
    this._commonRequestResponseService.post('hotel-profile-photo.php?action=get_profile_photo', inputJson)
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.loadProfileStatus = true;
          console.log('res--', res);
          if (res[0] && res[0]['user_logo_info'] && res[0]['user_logo_info'][0]) {
            this.hotelProfilePhotoData = res[0]['user_logo_info'][0];
          }
        } else {
          this.hotelProfilePhotoData = [];
        }
      }, (err) => {
        console.log('got Error', err);
      });
  }

  deleteProfilePhoto() {
    const inputJson = {
      user_id : 3,
      user_role_id : 2
    };
    this._commonRequestResponseService.post('hotel-profile-photo.php?action=delete_profile_photo', inputJson)
      .subscribe((res) => {
        console.log('api response--', res);
        if (res) {
          this.profilePhotoApiStatus = 'delete';
          this.getProfilePhoto();
        }
      }, (err) => {
        this.profilePhotoApiStatus = 'error';
        console.log('got Error', err);
      });
  }

  updateUrl() {
    console.log('in image error');
    return `${this.uploadUrl}/uploads/no-image.png`;
  }


}
