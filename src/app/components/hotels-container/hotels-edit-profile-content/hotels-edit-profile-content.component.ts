import { Component, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../app.config';
import { IAppConfig } from '../../../app.config.shared';
import {
  CommonRequestResponseService,
  GeneralApiFunctionsService
} from '../../../services';
@Component({
  selector: 'app-hotels-edit-profile-content',
  templateUrl: './hotels-edit-profile-content.component.html',
  styleUrls: ['./hotels-edit-profile-content.component.css']
})
export class HotelsEditProfileContentComponent implements OnInit {

  gender = 'male';
  countryData: any;
  stateData: any;
  settings;
  profileTitle = '';
  aboutUser = '';
  email = '';
  contactNumber = '';
  address = '';
  countryId = '';
  stateId = '';
  city = '';
  proflieUpdateApiStatus = '';
  userPersonalData = [];
  userContactData = [];
  constructor(
    @Inject(APP_CONFIG) private config: IAppConfig,
    private _commonRequestResponseService: CommonRequestResponseService,
    private _generalApiFunctionsService: GeneralApiFunctionsService) { }

  ngOnInit() {
    this.getCountryData();
    this.getUserPersonalData();
    this.getUserContactData();
  }

  getCountryData() {
    this._generalApiFunctionsService.getCountryData().subscribe((res) => {
      if (res && res.length > 0) {
        this.countryData = res;
      }
    }, (err) => {
      console.log('got Error', err);
    });
  }

  getStateData(countryId) {
    this._generalApiFunctionsService.getStateData(countryId).subscribe((res) => {
      if (res && res.length > 0) {
        this.stateData = res;
      }
    }, (err) => {
      console.log('got Error', err);
    });
  }

   getUserPersonalData() {
    const inputJson = {
      user_id : 3,
      user_role_id : 2
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
  getUserContactData() {
    const inputJson = {
      user_id : 3,
      user_role_id : 2
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

  setPersonalData(personalData) {
    this.profileTitle = personalData['user_proflie_title'];
    this.aboutUser = personalData['user_about_info'];
  }

  setContactData(contactData) {
    this.gender = contactData['user_gender'];
    this.email = contactData['user_email'],
    this.contactNumber = contactData['user_phone_number'];
    this.address = contactData['user_address'];
    this.countryId = contactData['user_country_id'];
    this.getStateData(this.countryId);
    this.stateId = contactData['user_zone_id'];
    this.city = contactData['user_city_name'];
  }
  
  updateProfile() {

    const personalInfoJson = this.preparePersonalInfoData();
    this.savePersonalInfo();
    // call personalInfo api
    const contactInfoJson = this.prepareContactInfoData();
    this.saveContactInfo();
    

    console.log('personalInfoJson--', personalInfoJson);
    console.log('contactInfoJson--', contactInfoJson);
    
  }

  savePersonalInfo() {
    const validateJson = this.preparePersonalInfoData();
    this._commonRequestResponseService.post('user.php?action=update_user_profile_personal_data', validateJson)
    .subscribe((res) => {
      console.log('personal info save successfully');
      this.proflieUpdateApiStatus = 'update';
    }, (err) => {
      console.log('error while saving personal info');
      this.proflieUpdateApiStatus = 'error';
    });
  }

  saveContactInfo() {
    const validateJson = this.prepareContactInfoData();
    this._commonRequestResponseService.post('user.php?action=update_user_profile_contact_data', validateJson)
    .subscribe((res) => {
      console.log('contact info save successfully');
      this.proflieUpdateApiStatus = 'update';
    }, (err) => {
      console.log('error while saving contact info');
      this.proflieUpdateApiStatus = 'error';
    });
  }

  preparePersonalInfoData() {
    const inputJson = {
      user_id : 3,
      user_role_id : 2,
      profile_title : this.profileTitle,
      about_user : this.aboutUser,
      gender : this.gender
    };
    return inputJson;
  }

  prepareContactInfoData() {
    const inputJson = {
      user_id : 3,
      user_role_id : 2,
      user_address : this.address,
      user_country : this.countryId,
      user_state : this.stateId,
      user_city : this.city,
      user_contact_number : this.contactNumber
    };
    return inputJson;
  }
  
}
