import { Component, ChangeDetectorRef, EventEmitter, Inject, Input, OnChanges, OnInit, ViewChild } from '@angular/core';
import {
  CommonAuthenticationService, CommonDataSharedService, CommonRequestResponseService, SetGetDataService
} from '../../../services';

import { APP_CONFIG } from '../../../app.config';
import { IAppConfig } from '../../../app.config.shared';
import { UploadOutput, UploadInput, UploadFile, humanizeBytes, UploaderOptions } from 'ngx-uploader';
import * as $ from 'jquery';
const returnCalendarViewBasedOnWindowSize = () => {
  if (window.innerWidth < 480) {
    return 'agendaDay';
  } else {
    return 'month';
  }
};

// Should the window resize, format the calendar with an appropriate view format.
// window.onresize = function(event) {
//   if ( window.innerWidth < 480 ) {
//     $('#myCalendar').fullCalendar('changeView', 'agendaDay');
//   } else {
//     $('#myCalendar').fullCalendar('changeView', 'month');
//   }
// };

@Component({
  selector: 'app-artists-calendar-content',
  templateUrl: './artists-calendar-content.component.html',
  styleUrls: ['./artists-calendar-content.component.css']
})
export class ArtistsCalendarContentComponent implements OnInit, OnChanges {

  showCalendar = false;
  eventDate;
  eventTitle = '';
  eventDescription = '';
  selectedEventId = 0;
  eventApiStatus = '';
  eventData = [];
  currentEvent = '';

  options: UploaderOptions;
  formData: FormData;
  files: UploadFile[];
  uploadInput: EventEmitter<UploadInput>;
  humanizeBytes: Function;
  dragOver: boolean;
  fileInProgress = '';
  uploadFile: any;
  hasBaseDropZoneOver = false;
  uploadUrl = '';

  coverData = '';

  calendarFormThis;
  currentEventCoverPhoto;

  currentEventPhotoData;
  calendarOptions = {
    height: 'auto',
    fixedWeekCount: false,
    defaultDate: new Date(),
    defaultView: 'month',
    editable: true,
    eventLimit: true, // allow "more" link when too many events,
    displayEventTime: false,
    timezone: 'local',
    ignoreTimezone: false,
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay,agendYear, prevYear,nextYear'
    },
    buttonText: {
      prevYear: '<< Prev Year ',
      nextYear: 'Next Year >>'
    },
    viewDisplay: (view) => {
      const d = $('.myCalendar').fullCalendar('getDate');
      const currentYear = parseInt(d.getFullYear().toString(), 10);
      $('.fc-button-prevYear .fc-button-content').text('<< Prev Year ');
      $('.fc-button-nextYear .fc-button-content').text('Next Year >>');
    },
    dayClick: (event, date) => {
      // tooltip.hide();
      let currentDate;
      console.log('event--', event);
      console.log('date--', date);
      console.log('this.currentEventCoverPhoto --', this.currentEventCoverPhoto );
      // currentDate = event._d;
      currentDate = event.format('MM/DD/YYYY');
      $('.tooltiptopicevent').hide();
      // this.eventName = 'Add';
      // this.isEdit = false;
      this.eventDate = currentDate.toLocaleString();
      // console.log('date--', this.eventDate);
      // this.modelVal.show();
      this.eventTitle = '';
      this.eventDescription = '';
      this.selectedEventId = 0;
      this.currentEventCoverPhoto  = '';
      this.showCalendarPopup();
    },

    eventMouseover: function (data, event, view) {

      $('body').append(this.tooltip);
      $('.tooltiptopicevent').show();
      $(this).mouseover(function (e) {
        $(this).css('z-index', 10000);
        $('.tooltiptopicevent').fadeIn('500');
        // $('.tooltiptopicevent').fadeTo('10', 1.9);
      }).mousemove(function (e) {
        $('.tooltiptopicevent').css('top', e.pageY + 10);
        $('.tooltiptopicevent').css('left', e.pageX + 20);
      });
      $('body').on('click', function () {
        $('.tooltiptopicevent').hide();
      });

    },
    eventClick: (calEvent, jsEvent, view) => {
      this.eventTitle = calEvent.title;
      this.eventDescription = calEvent.desciption;
      this.eventDate = calEvent.start;
      this.currentEventCoverPhoto = calEvent.event_cover_photo;
      this.selectedEventId = calEvent.id;
      if (this.currentEvent !== 'delete') {
        this.showCalendarPopup();
      }
    },
    eventMouseout: function (calEvent, jsEvent) {
      $(this).css('z-index', 8);
      $('.tooltiptopicevent').remove();
    },
    eventRender: (event, element, view) => {
      if (view.name === 'listDay') {
        element.find('.fc-list-item-time').append('&nbsp;&nbsp;&nbsp;<span class=\'closeon\'>X</span>');
      } else {
        element.find('.fc-content').append('&nbsp;&nbsp;&nbsp;<span class=\'closeon\'>X</span>');
      }
      element.find('.closeon').on('click', (e) => {
        this.currentEvent = 'delete';
        console.log('in delete');
        this.selectedEventId = event._id;
        $('.deleteCalendarModel').show();
        if ($('.calendarModel').is(':visible')) {
          this.hideCalendarPopup();
        }
        // this.modelVal.hide();
        // this.deletedEventId = event._id;
        // this.title = event.title;
        // this.description = event.description;
        // $('#myCalendar').fullCalendar('removeEvents',event._id);
        // this.confirmModelVal.show();
      });
    },

    events: []
  };
  constructor( @Inject(APP_CONFIG) private config: IAppConfig,
    private cd: ChangeDetectorRef,
    public _commonAuthenticationService: CommonAuthenticationService,
    public _commonDataSharedService: CommonDataSharedService,
    public _commonRequestResponseService: CommonRequestResponseService,
    public _setGetDataService: SetGetDataService
  ) {
    this.files = []; // local uploading files array
    this.uploadInput = new EventEmitter<UploadInput>(); // input events, we use this to emit data to ngx-uploader
    this.humanizeBytes = humanizeBytes;
    this.coverData = 'hi';
  }

  ngOnInit() {
    console.log('in calender');
    this.uploadUrl = this.config.apiEndpoint;
    this.hideCalendarPopup();
    this.hideDeleteCalendarPopup();
    this._commonDataSharedService.loadCalendar.subscribe((data) => {
      console.log('data in calander', data);
      this.showCalendar = false;
      setTimeout(() => {
        this.showCalendar = true;
        this.getEventData();
        this.cd.detectChanges();
      }, 200);
    });
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
        url: this.uploadUrl + 'artist-event.php?action=upload_artist_event_images',
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
      this.fileInProgress = 'progress';
      console.log('this.files--', this.files);
      this.coverData = 'hello';
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
      this.fileInProgress = 'done';
      const artistsEventFileData = { 'filesData': this.files };
      this._setGetDataService.setData(artistsEventFileData);
    }
  }

  updateUrl() {
    console.log('in image error');
    return `${this.uploadUrl}/uploads/no-image.png`;
  }


  startUpload(): void {
    const event: UploadInput = {
      type: 'uploadAll',
      url: this.uploadUrl + 'artist-event.php?action=upload_artist_event_images',
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

  getEventData() {
    this._commonRequestResponseService.post('artist-event.php?action=get_event', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.eventData = res;
        } else {
          this.eventData = [];
        }
        this.setEventDataToCalendar(this.eventData);
      }, (err) => {
        console.log('got Error', err);
      });
  }

  setEventDataToCalendar(data) {
    const calenderEventArr = [];
    for (let i = 0; i < data.length; i++) {
      const obj = {};
      console.log('data[i]--', data[i]);
      obj['title'] = data[i].event_title;
      obj['start'] = data[i].event_date;
      obj['desciption'] = data[i].event_description;
      obj['event_cover_photo'] = (data[i].event_cover_photo && data[i].event_cover_photo[0]) ? this.currentEventCoverPhoto = data[i].event_cover_photo[0]['generatedName'] : this.currentEventCoverPhoto = `${this.uploadUrl}/uploads/no-image.png`;
      obj['id'] = data[i].event_id;
      this.currentEventPhotoData = (data[i].event_cover_photo) ? data[i].event_cover_photo : [];
      calenderEventArr.push(obj);

      
    }
    console.log('calenderEventArr--', calenderEventArr);
    if (calenderEventArr) {
      this.calendarOptions.events = calenderEventArr;
      // newAddedItem.push(this.calenderEventArr.slice(-1).pop());
      // $('#myCalendar').fullCalendar('renderEvents', this.calenderEventArr, true);
      $('.myCalendar').fullCalendar('removeEvents');
      $('.myCalendar').fullCalendar('addEventSource', calenderEventArr);
    }
  }

  ngOnChanges() {
    console.log('in calender');
  }

  saveCalendar(artistCalendarForm) {
    let url = 'artist-event.php?action=addEvent';
    const validInputJson = this.prepareInputJson(artistCalendarForm);
    console.log('validInputJson--', validInputJson);
    if (artistCalendarForm.valid) {
      if (this.selectedEventId > 0) {
        validInputJson['event_id'] = this.selectedEventId;
        url = 'artist-event.php?action=update_event';
      }
      console.log('validInputJson--', validInputJson);
      this._commonRequestResponseService.post(url, validInputJson)
        .subscribe((res) => {
          if (res) {
            console.log('photosData--', res);
            if (this.selectedEventId > 0) {
              this.eventApiStatus = 'update';
            } else {
              this.eventApiStatus = 'save';
            }
            this.hideCalendarPopup();
            this.getEventData();
          }
        }, (err) => {
          this.eventApiStatus = 'error';
          console.log('got Error', err);
        });
    }
  }

  deleteEvent() {
    const inputJson = { event_id: this.selectedEventId };
    this._commonRequestResponseService.post('artist-event.php?action=delete_event', inputJson)
      .subscribe((res) => {
        console.log('api response--', res);
        if (res) {
          this.eventApiStatus = 'delete';
          this.hideDeleteCalendarPopup();
          this.getEventData();
        }
      }, (err) => {
        console.log('got Error', err);
      });
  }

  prepareInputJson(artistCalendarForm) {
    if (artistCalendarForm.valid) {
      this.eventApiStatus = '';
      const inputJson = {
        user_id: 1,
        user_role_id: 1,
        event_title: this.eventTitle,
        event_description: this.eventDescription,
        event_cover_photo: JSON.stringify(this.prepareEventPhotoJson()),
        event_date: this.eventDate
      };
      return inputJson;
    } else {
      this.eventApiStatus = 'validationError';
    }
  }

  prepareEventPhotoJson() {
    console.log('get data--', this._setGetDataService.getData());
    const currentLoadedFileData = this._setGetDataService.getData()['filesData'];
    let resultString;
    if (currentLoadedFileData) {
      resultString = currentLoadedFileData.map((data) => data['responseStatus'] === 200 ? data.response : '').filter((e) => e !== '');
    } else {
      resultString = this.currentEventPhotoData;
    }
    return resultString;

  }

  hideCalendarPopup() {
    $('.calendarModel').hide();
  }

  showCalendarPopup() {
    $('.calendarModel').show();
  }

  hideDeleteCalendarPopup() {
    $('.deleteCalendarModel').hide();
  }
}
