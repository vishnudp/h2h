import { Component, EventEmitter, Inject, Input, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../app.config';
import { IAppConfig } from '../../../app.config.shared';
import {
  CommonAuthenticationService, CommonDataSharedService, CommonRequestResponseService
} from '../../../services/common-services';
import { UploadOutput, UploadInput, UploadFile, humanizeBytes, UploaderOptions } from 'ngx-uploader';
@Component({
  selector: 'app-hotels-page-slider-content',
  templateUrl: './hotels-page-slider-content.component.html',
  styleUrls: ['./hotels-page-slider-content.component.css']
})
export class HotelsPageSliderContentComponent implements OnInit {

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
  sliderPhotoApiStatus = '';
  hotelSliderPhotoData;
  loadSliderStatus = false;
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
    this.getSliderPhoto();
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
        url: this.uploadUrl + 'hotel-slider-photo.php?action=upload_hotel_slider_image',
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
      console.log('file uploaded', this.files);
      this.saveSliderPhotos();
    }
  }

  startUpload(): void {
    const event: UploadInput = {
      type: 'uploadAll',
      url: this.uploadUrl + 'hotel-slider-photo.php?action=upload_hotel_slider_image',
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

  saveSliderPhotos() {
    // value.map((data, index) => data.userId !== id ? data.userName : data.userId).filter(function (e) { return e !== id });
    const url = 'hotel-slider-photo.php?action=update_slider_photo';
    const validInputJson = this.prepareSliderPhotoInputJson();
    console.log('validInputJson--', validInputJson);
    this._commonRequestResponseService.post(url, validInputJson)
    .subscribe((res) => {
      if (res) {
        this.sliderPhotoApiStatus = 'update';
        this.getSliderPhoto();
      }
    }, (err) => {
      this.sliderPhotoApiStatus = 'error';
      console.log('got Error', err);
    });
  }

  prepareSliderPhotoInputJson() {
    const inputJson = {
      user_id : 3,
      user_role_id : 2,
      user_slider_images : JSON.stringify(this.prepareSliderPhotoJson())
    };
    return inputJson;
  }

  prepareSliderPhotoJson() {
    console.log('this.files--', this.files);
    const resultString = this.files.map((data) =>  data['responseStatus'] === 200 ? data.response : '').filter((e) => e !== '' );
    console.log('resultString0--', resultString);
    return resultString;
  }

  getSliderPhoto() {
    const inputJson = {
      user_id : 3,
      user_role_id : 2
    };
    this._commonRequestResponseService.post('hotel-slider-photo.php?action=get_slider_photo', inputJson)
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.loadSliderStatus = true;
          console.log('user_slider_images--', res);
          this.hotelSliderPhotoData = res[0]['user_slider_images'];
        } else {
          this.hotelSliderPhotoData = [];
        }
      }, (err) => {
        console.log('got Error', err);
      });
  }

  updateUrl() {
    console.log('in image error');
    return './assets/images/slider/innerslider.png';
  }


}
