import { Component, EventEmitter, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../app.config';
import { IAppConfig } from '../../../app.config.shared';
import {
  CommonRequestResponseService
} from '../../../services/common-services';
import { UploadOutput, UploadInput, UploadFile, humanizeBytes, UploaderOptions } from 'ngx-uploader';
@Component({
  selector: 'app-hotels-gallery-videos-content',
  templateUrl: './hotels-gallery-videos-content.component.html',
  styleUrls: ['./hotels-gallery-videos-content.component.css']
})
export class HotelsGalleryVideosContentComponent implements OnInit {
  options: UploaderOptions;
  formData: FormData;
  files: UploadFile[];
  uploadInput: EventEmitter<UploadInput>;
  humanizeBytes: Function;
  dragOver: boolean;

  uploadFile: any;
  hasBaseDropZoneOver = false;
  postTitle = '';
  postLocation = '';
  postDescription = '';
  artistVideosData = [];
  artistVideosPerTitleData = [];

  selectedVideosCatalogPostId = 0;

  selectedCatalogueIndex = 0;
  uploadUrl = '';

  videoCatalogueApiStatus = '';
  fileInProgressVideo = '';
  loadContentStatus = false;
  currentDeletingItemIndex;
  constructor( @Inject(APP_CONFIG) private config: IAppConfig, private _commonRequestResponseService: CommonRequestResponseService) {
    // this.options = { concurrency: 0, allowedContentTypes: ['image/jpeg', 'image/png', 'image/gif'] };
    this.files = []; // local uploading files array
    this.uploadInput = new EventEmitter<UploadInput>(); // input events, we use this to emit data to ngx-uploader
    this.humanizeBytes = humanizeBytes;
  }

  ngOnInit() {
    this.uploadUrl = this.config.apiEndpoint;
    this.getVideosTitleData();
  }

  updateUrl() {
    console.log('in image error');
    return `${this.uploadUrl}/uploads/no-image.png`;
  }

  getVideosTitleData() {
    this._commonRequestResponseService.post('hotels-catalog-videos.php?action=get_catalog_videos_title', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.artistVideosData = res;
          this.getVideosPerTitleData(res[0].post_id);
          this.selectedVideosCatalogPostId = res[0].post_id;
          this.selectedCatalogueIndex = res[0].post_id;
          this.setVideosCatalogueFormData(this.selectedCatalogueIndex);
        } else {
          this.artistVideosData = [];
        }
      }, (err) => {
        console.log('got Error', err);
      });
  }

  getVideosPerTitleData(postId) {
    this.selectedCatalogueIndex = postId;
    this.selectedVideosCatalogPostId = postId;
    const inputJson = { postId };
    this._commonRequestResponseService.post('hotels-catalog-videos.php?action=get_catalog_videos_per_title', inputJson)
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.artistVideosPerTitleData = res[0]['post_attachment'];
          this.loadContentStatus = true;
        } else {
          this.artistVideosPerTitleData = [];
          this.loadContentStatus = true;
        }
      }, (err) => {
        this.loadContentStatus = false;
        console.log('got Error', err);
      });
  }

  setVideosCatalogueFormData(index) {
    if (this.artistVideosData) {

      for (let i = 0; i < this.artistVideosData.length; i++) {
        if (this.artistVideosData[i].post_id === index.toString()) {
          this.postTitle = this.artistVideosData[i]['post_title'];
          this.postLocation = this.artistVideosData[i]['post_place'];
          this.postDescription = this.artistVideosData[i]['post_description'];
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
        url: this.uploadUrl + 'hotels-catalog-videos.php?action=upload_artist_catalog_videos',
        method: 'POST',
        data: { foo: 'bar' }
      };
      this.uploadInput.emit(event);
    } else if (output.type === 'addedToQueue' && typeof output.file !== 'undefined') { // add file to array when added
      this.files.push(output.file);
    } else if (output.type === 'uploading' && typeof output.file !== 'undefined') {
      // update current data in files array for uploading file
      const index = this.files.findIndex(file => typeof output.file !== 'undefined' && file.id === output.file.id);
      this.files[index] = output.file;
      this.fileInProgressVideo = 'progress';
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
      this.fileInProgressVideo = 'done';
      console.log('file uploaded');
    }
  }

  startUpload(): void {
    const event: UploadInput = {
      type: 'uploadAll',
      url: this.uploadUrl + 'hotels-catalog-videos.php?action=upload_artist_catalog_videos',
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

  saveVideosCatalogue(hotelVideoForm) {
    // value.map((data, index) => data.userId !== id ? data.userName : data.userId).filter(function (e) { return e !== id });
    let url = 'hotels-catalog-videos.php?action=addVideos';
    const validInputJson = this.prepareSaveVideoCatalogueInputJson(hotelVideoForm);
    if (hotelVideoForm.valid) {
      if (this.selectedVideosCatalogPostId > 0) {
        validInputJson['post_id'] = this.selectedVideosCatalogPostId;
        url = 'hotels-catalog-videos.php?action=update_catalog_videos';
      }
      console.log('validInputJson--', validInputJson);
      this._commonRequestResponseService.post(url, validInputJson)
        .subscribe((res) => {
          if (res) {
            console.log('videosData--', res);
            if (this.selectedVideosCatalogPostId > 0) {
              this.videoCatalogueApiStatus = 'update';
            } else {
              this.videoCatalogueApiStatus = 'save';
            }
            this.getVideosTitleData();
          }
        }, (err) => {
          this.videoCatalogueApiStatus = 'error';
          console.log('got Error', err);
        });
    }
  }

  prepareSaveVideoCatalogueInputJson(hotelVideoForm) {
    if (hotelVideoForm.valid) {
      this.videoCatalogueApiStatus = '';
      const inputJson = {
        user_id: 2,
        user_role_id: 2,
        post_title: this.postTitle,
        post_place: this.postLocation,
        post_description: this.postDescription,
        post_type: 'video',
        post_attachment: JSON.stringify(this.prepareVideoCatalogueJson())
      };
      return inputJson;
    } else {
      this.videoCatalogueApiStatus = 'validationError';
    }
  }

  prepareVideoCatalogueJson() {
    const resultString = this.files.map((data) => data['responseStatus'] === 200 ? data.response : '').filter((e) => e !== '');
    let mergeArray = resultString;
    if (this.artistVideosPerTitleData.length > 0 && this.selectedVideosCatalogPostId > 0) {
      mergeArray = resultString.concat(this.artistVideosPerTitleData);
    }
    console.log('resultString--', resultString);
    return mergeArray;
  }

  showDeletionConfirmationPopup(id) {
    this.currentDeletingItemIndex = id;
  }

  deleteAttachmentPerPost() {
    this.artistVideosPerTitleData.splice(this.currentDeletingItemIndex, 1);
    const inputJson = {
      user_id: 2,
      user_role_id: 2,
      post_id: this.selectedVideosCatalogPostId,
      post_attachment: JSON.stringify(this.artistVideosPerTitleData)
    };
    this._commonRequestResponseService.post('hotels-catalog-videos.php?action=delete_catalog_video_attachment', inputJson)
      .subscribe((res) => {
        if (res) {
          console.log('photosData--', res);
          this.videoCatalogueApiStatus = 'delete';
          this.getVideosTitleData();
        }
      }, (err) => {
        this.videoCatalogueApiStatus = 'error';
        console.log('got Error', err);
      });
    console.log('this.artistPhotosPerTitleData--', this.artistVideosPerTitleData);
  }

  resetForm(hotelVideoForm) {
    hotelVideoForm.reset();
    // this.postTitle = '';
    // this.postLocation = '';
    // this.postDescription = '';
    // this.selectedVideosCatalogPostId = 0;
    // this.removeAllFiles();
  }

}
