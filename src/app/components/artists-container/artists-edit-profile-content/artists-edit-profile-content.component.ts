import { Component, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../app.config';
import { IAppConfig } from '../../../app.config.shared';
import {
  CommonRequestResponseService,
  GeneralApiFunctionsService
} from '../../../services';
@Component({
  selector: 'app-artists-edit-profile-content',
  templateUrl: './artists-edit-profile-content.component.html',
  styleUrls: ['./artists-edit-profile-content.component.css']
})
export class ArtistsEditProfileContentComponent implements OnInit {
  countryData: any;
  stateData: any;
  languageArray = [];
  artistCategoryData = [];
  languageData = [];
  settings;
  profileTitle = '';
  aboutUser = '';
  gender = 'male';
  height = '';
  weight = '';
  complexion = '';
  bodyType = '';
  email = '';
  contactNumber = '';
  address = '';
  countryId = '';
  stateId = '';
  city = '';
  artistCategory = [];
  selectedLanguage = [];
  readyToTravel = 'yes';
  passportStatus = 'yes';
  proflieUpdateApiStatus = '';
  userPersonalData = [];

  userContactData = [];
  userOtherData = [];
  constructor(
    @Inject(APP_CONFIG) private config: IAppConfig,
    private _commonRequestResponseService: CommonRequestResponseService,
    private _generalApiFunctionsService: GeneralApiFunctionsService) { }

  ngOnInit() {
    this.getCountryData();
    this.getArtistCategory();
    this.getLanguageData();
    this.getUserPersonalData();
    this.getUserContactData();
    this.getUserOtherData();
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

  getArtistCategory() {
    this._commonRequestResponseService.post('artist-category.php?action=get_artist_category', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.artistCategoryData = res;
        }
        this.artistCategoryData.map((data) => {data['checked'] = false; });
        console.log('this.artistCategoryData--', this.artistCategoryData);
      }, (err) => {
        console.log('got Error', err);
      });
  }

  getLanguageData() {
    this._commonRequestResponseService.post('language.php?action=get_language_data', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.languageData = res;
          this.languageArray = this.languageData.map(item => {
            return {
              id: item['language_id'].toString(),
              itemName: item['language_title'].toString()
            };
          });
          this.selectedLanguage = this.languageData.map(item => {
            return {
              id: item['language_id'].toString(),
              itemName: item['language_title'].toString()
            };
          });
        }
      }, (err) => {
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

  getUserOtherData() {
    const inputJson = {
      user_id : 1,
      user_role_id : 1
    };
    this._commonRequestResponseService.post('user.php?action=get_user_profile_other_data', inputJson)
    .subscribe((res) => {
      console.log('api response--', res);
      if (res && res.length > 0) {
        this.userOtherData = res[0];
        this.setOtherData(this.userOtherData);
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

  setOtherData(otherData) {
    this.artistCategory = otherData['user_artist_category'];
    this.languageData = otherData['user_artist_language'];
    this.height = otherData['user_artist_physical_desc']['height'];
    this.weight = otherData['user_artist_physical_desc']['weight'];
    this.complexion = otherData['user_artist_physical_desc']['complexion'];
    this.bodyType = otherData['user_artist_physical_desc']['bodyType'];
    this.readyToTravel = otherData['user_artist_convince_travel'];
    this.passportStatus = otherData['user_artist_convince_passport'];
  }

  updateProfile() {

    const personalInfoJson = this.preparePersonalInfoData();
    this.savePersonalInfo();
    // call personalInfo api
    const contactInfoJson = this.prepareContactInfoData();
    this.saveContactInfo();
    // call contact info api
    const otherInfoJson = this.prepareOtherInfo();
    this.saveOtherInfo();
    // call other info api

    console.log('personalInfoJson--', personalInfoJson);
    console.log('contactInfoJson--', contactInfoJson);
    console.log('otherInfoJson--', otherInfoJson);
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

  saveOtherInfo() {
    const validateJson = this.prepareOtherInfo();
    this._commonRequestResponseService.post('user.php?action=update_user_profile_other_data', validateJson)
    .subscribe((res) => {
      console.log('other info save successfully');
      this.proflieUpdateApiStatus = 'update';
    }, (err) => {
      console.log('error while saving other info');
      this.proflieUpdateApiStatus = 'error';
    });
  }

  preparePersonalInfoData() {
    const inputJson = {
      user_id : 1,
      user_role_id : 1,
      profile_title : this.profileTitle,
      about_user : this.aboutUser,
      gender : this.gender
    };
    return inputJson;
  }

  prepareContactInfoData() {
    const inputJson = {
      user_id : 1,
      user_role_id : 1,
      user_address : this.address,
      user_country : this.countryId,
      user_state : this.stateId,
      user_city : this.city,
      user_contact_number : this.contactNumber
    };
    return inputJson;
  }

  prepareOtherInfo() {
    const inputJson = {
      user_id : 1,
      user_role_id : 1,
      user_artist_category : JSON.stringify(this.artistCategory),
      user_artist_language : JSON.stringify(this.selectedLanguage),
      user_artist_physical_description : JSON.stringify({ height : this.height ,
                                           weight : this.weight ,
                                          complexion : this.complexion ,
                                          bodyType : this.bodyType }),
      user_artist_convence_travel : this.readyToTravel,
      user_artist_convence_passport : this.passportStatus
    };
    return inputJson;
  }

  onItemSelect(item: any) {
    console.log(item);
    console.log(this.selectedLanguage);
  }
  OnItemDeSelect(item: any) {
    console.log(item);
    console.log(this.selectedLanguage);
  }
  onSelectAll(items: any) {
    console.log(this.selectedLanguage);
  }
  onDeSelectAll(items: any) {
    console.log(this.selectedLanguage);
  }
  onSelect(object) {
    console.log('object--', object);
    if (object.checked) {
      this.artistCategory.push( { artist_category_id : object.artist_category_id } );
    } else if (!object.checked) {
      object.checked = true;
      const index = this.artistCategory.indexOf(object);
      this.artistCategory.splice(index, 1);
      object.checked = false;
    }
    console.log('this.artistCategory--', this.artistCategory);
  }

}
