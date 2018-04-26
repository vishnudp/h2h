import { Component, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../app.config';
import { IAppConfig } from '../../../app.config.shared';
import {
  CommonRequestResponseService,
  GeneralApiFunctionsService
} from '../../../services';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {
  countryData: any;
  stateData: any;
  roleData: any;

  // Form fields
  fName = '';
  lName = '';
  dob = '';
  contactNumber = '';
  city = '';
  zip = '';
  countryId = '';
  stateId = '';
  roleId = '';
  gender = 'male';
  signUpApiStatus = '';
  constructor(
    @Inject(APP_CONFIG) private config: IAppConfig,
    private _commonRequestResponseService: CommonRequestResponseService,
    private _generalApiFunctionsService: GeneralApiFunctionsService
    ) { }

  ngOnInit() {
    this.getCountryData();
    this.getUserRoleData();
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

  getUserRoleData() {
    this._generalApiFunctionsService.getRoleData().subscribe((res) => {
      if (res && res.length > 0) {
        this.roleData = res;
      }
    }, (err) => {
      console.log('got Error', err);
    });
  }

  prepareRegistrationFormData() {
    const inputJson = {
      fName : this.fName,
      lName : this.lName,
      dob   : this.dob,
      contactNumber : this.contactNumber,
      countryId : this.countryId,
      stateId : this.stateId,
      city : this.city,
      zip : this.zip,
      gender : this.gender,
      roleId : this.roleId
    };
    return inputJson;
  }

  saveUser() {
    const validInputJson = this.prepareRegistrationFormData();
    console.log('validInputJson--', validInputJson);
    this._commonRequestResponseService.post('user.php?action=save_user_data', validInputJson)
    .subscribe((res) => {
      if (res) {
        console.log('userData--', res);
        this.signUpApiStatus = 'success';
      }
    }, (err) => {
        this.signUpApiStatus = 'error';
    });
  }
}
