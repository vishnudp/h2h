import { Component, EventEmitter, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../app.config';
import { IAppConfig } from '../../../app.config.shared';
import {
  CommonRequestResponseService
} from '../../../services/common-services';
import { UploadOutput, UploadInput, UploadFile, humanizeBytes, UploaderOptions } from 'ngx-uploader';
@Component({
  selector: 'app-hotels-gallery-photos-content',
  templateUrl: './hotels-gallery-photos-content.component.html',
  styleUrls: ['./hotels-gallery-photos-content.component.css']
})
export class HotelsGalleryPhotosContentComponent implements OnInit {
  options: UploaderOptions;
  formData: FormData;
  files: UploadFile[];
  uploadInput: EventEmitter<UploadInput>;
  humanizeBytes: Function;
  dragOver: boolean;
  fileInProgress = '';
  uploadFile: any;
  hasBaseDropZoneOver = false;
  postTitle = '';
  postLocation = '';
  postDescription = '';
  artistPhotosData = [];
  artistPhotosPerTitleData = [];

  selectedPhotoCatalogPostId = 0;

  selectedCatalogueIndex = 0;
  uploadUrl = '';

  photoCatalogueApiStatus = '';
  loadContentStatus = false;
  currentDeletingItemIndex;
  constructor(@Inject(APP_CONFIG) private config: IAppConfig, private _commonRequestResponseService: CommonRequestResponseService) {
    // this.options = { concurrency: 0, allowedContentTypes: ['image/jpeg', 'image/png', 'image/gif'] };
    this.files = []; // local uploading files array
    this.uploadInput = new EventEmitter<UploadInput>(); // input events, we use this to emit data to ngx-uploader
    this.humanizeBytes = humanizeBytes;
   }

  ngOnInit() {
    this.uploadUrl = this.config.apiEndpoint;
    this.getPhotosTitleData();
  }

  updateUrl() {
    console.log('in image error');
    return `${this.uploadUrl}/uploads/no-image.png`;
  }

  getPhotosTitleData() {
    this._commonRequestResponseService.post('hotels-catalog-photos.php?action=get_catalog_photos_title', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.artistPhotosData = res;
          this.getPhotosPerTitleData(res[0].post_id);
          this.selectedPhotoCatalogPostId = res[0].post_id;
          this.selectedCatalogueIndex = res[0].post_id;
          this.setPhotoCatalogueFormData(this.selectedCatalogueIndex);
        } else {
          this.artistPhotosData = [];
        }
      }, (err) => {
        console.log('got Error', err);
      });
  }

  getPhotosPerTitleData(postId) {
    this.selectedCatalogueIndex = postId;
    this.selectedPhotoCatalogPostId = postId;
    const inputJson = {postId};
    this._commonRequestResponseService.post('hotels-catalog-photos.php?action=get_catalog_photos_per_title', inputJson)
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.artistPhotosPerTitleData = res[0]['post_attachment'];
          this.loadContentStatus = true;
        } else {
          this.artistPhotosPerTitleData = [];
          this.loadContentStatus = true;
        }
      }, (err) => {
        this.loadContentStatus = false;
        console.log('got Error', err);
      });
  }

  setPhotoCatalogueFormData(index) {
    if (this.artistPhotosData) {
      const resultData = this.artistPhotosData.map((data) => { if ( data.post_id === index.toString()) { return data; }});
      const filteredData = resultData.filter((e) => e !== undefined);
      for (let i = 0; i < this.artistPhotosData.length; i++) {
        if (this.artistPhotosData[i].post_id === index.toString()) {
            this.postTitle = this.artistPhotosData[i]['post_title'];
            this.postLocation = this.artistPhotosData[i]['post_place'];
            this.postDescription = this.artistPhotosData[i]['post_description'];
            break;
        }
      }
    }
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
        url: this.uploadUrl + 'hotels-catalog-photos.php?action=upload_artist_catalog_images',
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
    }
  }

  startUpload(): void {
    const event: UploadInput = {
      type: 'uploadAll',
      url: this.uploadUrl + 'hotels-catalog-photos.php?action=upload_artist_catalog_images',
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

  savePhotoCatalogue(hotelPhotoForm) {
    console.log('hotelPhotoForm--', hotelPhotoForm.valid);
    // value.map((data, index) => data.userId !== id ? data.userName : data.userId).filter(function (e) { return e !== id });
    let url = 'hotels-catalog-photos.php?action=addPhotos';
    const validInputJson = this.prepareSavePhotoCatalogueInputJson(hotelPhotoForm);
    if (hotelPhotoForm.valid) {
      if (this.selectedPhotoCatalogPostId > 0) {
        validInputJson['post_id'] = this.selectedPhotoCatalogPostId;
        url = 'hotels-catalog-photos.php?action=update_catalog_photos';
      }
      console.log('validInputJson--', validInputJson);
      this._commonRequestResponseService.post(url, validInputJson)
      .subscribe((res) => {
        if (res) {
          console.log('photosData--', res);
          if (this.selectedPhotoCatalogPostId > 0) {
            this.photoCatalogueApiStatus = 'update';
          } else {
            this.photoCatalogueApiStatus = 'save';
          }
          this.getPhotosTitleData();
        }
      }, (err) => {
        this.photoCatalogueApiStatus = 'error';
        console.log('got Error', err);
      });
    }
  }

  prepareSavePhotoCatalogueInputJson(hotelPhotoForm) {
    if (hotelPhotoForm.valid) {
      this.photoCatalogueApiStatus = '';
      const inputJson = {
        user_id : 2,
        user_role_id : 2,
        post_title : this.postTitle,
        post_place : this.postLocation,
        post_description : this.postDescription,
        post_type : 'image',
        post_attachment : JSON.stringify(this.preparePhotoCatalogueJson())
      };
      return inputJson;
    } else {
      this.photoCatalogueApiStatus = 'validationError';
    }
  }

  preparePhotoCatalogueJson() {
    const resultString = this.files.map((data) =>  data['responseStatus'] === 200 ? data.response : '').filter((e) => e !== '' );
    let mergeArray = resultString;
    if (this.artistPhotosPerTitleData.length > 0 && this.selectedPhotoCatalogPostId > 0) {
      mergeArray = resultString.concat(this.artistPhotosPerTitleData);
    }
    console.log('resultString--', resultString);
    return mergeArray;
  }

  showDeletionConfirmationPopup(id) {
    this.currentDeletingItemIndex = id;
  }

  deleteAttachmentPerPost() {
    this.artistPhotosPerTitleData.splice(this.currentDeletingItemIndex, 1);
    const inputJson = {
      user_id : 2,
      user_role_id : 2,
      post_id : this.selectedPhotoCatalogPostId,
      post_attachment : JSON.stringify(this.artistPhotosPerTitleData)
    };
    this._commonRequestResponseService.post('hotels-catalog-photos.php?action=delete_catalog_photo_attachment', inputJson)
    .subscribe((res) => {
      if (res) {
        console.log('photosData--', res);
        this.photoCatalogueApiStatus = 'delete';
        this.getPhotosTitleData();
      }
    }, (err) => {
      this.photoCatalogueApiStatus = 'error';
      console.log('got Error', err);
    });
    console.log('this.artistPhotosPerTitleData--', this.artistPhotosPerTitleData);
  }

  resetForm(hotelPhotoForm) {
    hotelPhotoForm.reset();
  }

}
