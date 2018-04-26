import { Component, OnInit } from '@angular/core';
import { 
  CommonAuthenticationService, CommonDataSharedService, CommonRequestResponseService
} from '../../../services/common-services';
@Component({
  selector: 'app-hotels-view-profile-content',
  templateUrl: './hotels-view-profile-content.component.html',
  styleUrls: ['./hotels-view-profile-content.component.css']
})
export class HotelsViewProfileContentComponent implements OnInit {

  constructor(public _commonAuthenticationService: CommonAuthenticationService,
    public _commonDataSharedService: CommonDataSharedService,
    public _commonRequestResponseService: CommonRequestResponseService) { }
  showForm = false;
  userPersonalData;
  userContactData;
  loadPersonalDataStatus = false;
  loadContactDataStatus = false;
  ngOnInit() {
    this.getUserPersonalData();
    this.getUserContactData();
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
        this.loadPersonalDataStatus = true;
      }
    }, (err) => {
      this.loadPersonalDataStatus = false;
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
        this.loadContactDataStatus = true;
      }
    }, (err) => {
      this.loadContactDataStatus = false;
      console.log('got Error', err);
    });
  }

  

}
