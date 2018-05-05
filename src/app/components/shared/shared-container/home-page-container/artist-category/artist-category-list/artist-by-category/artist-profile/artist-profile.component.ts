import { Component, Inject, OnInit, OnDestroy } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Subscription } from 'rxjs/Subscription';

import {
  CommonRequestResponseService
} from '../../../../../../../../services/common-services';
import { APP_CONFIG } from '../../../../../../../../app.config';
import { IAppConfig } from '../../../../../../../../app.config.shared';
@Component({
  selector: 'app-artist-profile',
  templateUrl: './artist-profile.component.html'
})
export class ArtistProfileComponent implements OnInit, OnDestroy {
  //@Input() artistCategoryData;
  //artistCategoryImagesPath;
  routeParamSubs : Subscription;

  showForm = false;

  skillsData = [];
  eventData = [];
  loadSkillStatus = false;
  loadEventStatus = false;

  profileTitle = '';
  aboutUser = '';
  userPersonalData = {};
  userContactData = {};
  constructor(
    //@Inject(APP_CONFIG) private config: IAppConfig,
    private route : ActivatedRoute,
    private _commonRequestResponseService : CommonRequestResponseService
    ) { }

  ngOnInit() {
    // if ( this.config.artistCategoryImagesPath && this.config.artistCategoryImagesPath.length > 0 ) {
    //   this.artistCategoryImagesPath = this.config.artistCategoryImagesPath;
    // }
    this.routeParamSubs = this.route.params.subscribe(({id})=>this.getArtistProfile(id))
  }

  getArtistProfile(id) {
    console.log("Artist profile id",id);
    this.getSkills();
    this.getEvents();
    this.getUserPersonalData();
    // this._commonRequestResponseService.post('artists-profile.php?action=get_artists_by_category', {artist_category: id})
    //   .subscribe((res) => {
    //     console.log("resqqq",res);
    //     if (res && res.length) {
    //       res.map((obj)=>{
    //         obj.user_logo_info = JSON.parse(obj.user_logo_info);
    //       })
    //       this.artistProfileData = res;
    //     }
    //   }, err => console.log('got Error', err))
  }

  getSkills() {
    this._commonRequestResponseService.post('artist-skill.php?action=get_skill', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.skillsData = res;
          this.loadSkillStatus = true;
        } else {
          this.skillsData = [];
          this.loadSkillStatus = true;
        }
      }, (err) => {
        this.loadSkillStatus = false;
        console.log('got Error', err);
      });
  }

  getEvents() {
    this._commonRequestResponseService.post('artist-event.php?action=get_event', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.eventData = res;
          this.loadEventStatus = true;
        } else {
          this.eventData = [];
          this.loadEventStatus = true;
        }
      }, (err) => {
        this.loadEventStatus = false;
        console.log('got Error', err);
      });
  }

  getUserPersonalData() {
    const inputJson = {
      user_id : 1,
      user_role_id : 1
    };
    this._commonRequestResponseService.post('user.php?action=get_user_profile_personal_data', inputJson)
    .subscribe((res) => {
      console.log('api response--', res);
      if (res && res.length > 0) {
        this.userPersonalData = res[0];
        this.setPersonalData(this.userPersonalData);
      }
    }, (err) => {
      console.log('got Error', err);
    });
  }

  setPersonalData(personalData) {
    this.profileTitle = personalData['user_proflie_title'];
    this.aboutUser = personalData['user_about_info'];
  }

  getUserContactData() {
    const inputJson = {
      user_id : 1,
      user_role_id : 1
    };
    this._commonRequestResponseService.post('user.php?action=get_user_profile_contact_data', inputJson)
    .subscribe((res) => {
      console.log('api response--', res);
      if (res && res.length > 0) {
        this.userContactData = res[0];
        this.setContactData(this.userContactData);
      }
    }, (err) => {
      console.log('got Error', err);
    });
  }
  
  setContactData(contactData) {
    // this.gender = contactData['user_gender'];
    // this.email = contactData['user_email'],
    // this.contactNumber = contactData['user_phone_number'];
    // this.address = contactData['user_address'];
    // this.countryId = contactData['user_country_id'];
    // this.getStateData(this.countryId);
    // this.stateId = contactData['user_zone_id'];
    // this.city = contactData['user_city_name'];
  }

  ngOnDestroy() {
    this.routeParamSubs.unsubscribe();
  }

}
