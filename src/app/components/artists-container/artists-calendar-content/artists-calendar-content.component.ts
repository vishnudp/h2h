import { Component, ChangeDetectorRef, Input, OnChanges, OnInit, ViewChild } from '@angular/core';
import { 
  CommonAuthenticationService, CommonDataSharedService, CommonRequestResponseService
} from '../../../services/common-services';
import * as $ from 'jquery';
const returnCalendarViewBasedOnWindowSize = () => {
  if ( window.innerWidth < 480 ) {
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
  @ViewChild('calendarModel') calendarModel;
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
      this.showCalendarPopup();
    },

    eventMouseover: function (data, event, view) {

      // this.tooltip = '<div class="tooltiptopicevent" style="width:auto;height:auto;background:#ccc; color: #353333; position:absolute;z-index:10001;padding:10px 10px 10px 10px ;  line-height: 200%;">' + 'Title ' + ' : ' + data.title + '</br>' + 'Start Date ' + ' : ' + new Date(data.start).toLocaleString().split(',')[0] + '</br>' + '</div>';


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
  constructor( private cd: ChangeDetectorRef,
      public _commonAuthenticationService: CommonAuthenticationService,
      public _commonDataSharedService: CommonDataSharedService,
      public _commonRequestResponseService: CommonRequestResponseService) { }

  ngOnInit() {
    console.log('in calender');
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
      obj['title'] = data[i].event_title;
      obj['start'] = data[i].event_date;
      obj['desciption'] = data[i].event_description;
      obj['id'] = data[i].event_id;
      calenderEventArr.push(obj);
    }
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

  saveCalendar() {
    let url = 'artist-event.php?action=addEvent';
    const validInputJson = this.prepareInputJson();
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

  deleteEvent() {
    const inputJson = { event_id : this.selectedEventId};
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

  prepareInputJson() {
    const inputJson = {
      user_id : 1,
      user_role_id : 1,
      event_title : this.eventTitle,
      event_description : this.eventDescription,
      event_date : this.eventDate
    };
    return inputJson;
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
