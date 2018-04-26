import { Component, Inject, OnInit } from '@angular/core';
import { FormsModule, NgForm } from '@angular/forms';
import { APP_CONFIG } from '../../../app.config';
import { IAppConfig } from '../../../app.config.shared';
import { AuthService } from 'angular2-social-login';
import { ActivatedRoute, Router } from '@angular/router';
import { FacebookService, LoginResponse, LoginOptions, UIResponse, UIParams, FBVideoComponent } from 'ngx-facebook';
import {
  CommonAuthenticationService, CommonDataSharedService
} from '../../../services/common-services';
declare var $: any;
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

  public user;
  sub: any;
  username = '';
  userpassword = '';
  loginApiStatus = '';
  email = '';
  constructor(
    @Inject(APP_CONFIG) private config: IAppConfig,
    public _auth: AuthService,
              public fb: FacebookService,
              public _commonAuthenticationService: CommonAuthenticationService,
              public _commonDataSharedService: CommonDataSharedService,
              private _router: Router,
              private _routes: ActivatedRoute,
    private _commonRequestResponseService: CommonRequestResponseService,
    private _generalApiFunctionsService: GeneralApiFunctionsService
    ) {
      this.fb.init({
        appId: '257126294373864',
        version: 'v2.9'
      });
    }

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

  prepareRegistrationFormData(userForm) {
    let inputJson = {};
    console.log('userForm.valid--', userForm.valid);
    if (userForm.valid) {
      this.signUpApiStatus = '';
      inputJson = {
        username : this.username,
        fName : this.fName,
        lName : this.lName,
        dob   : this.dob,
        contactNumber : this.contactNumber,
        countryId : this.countryId,
        stateId : this.stateId,
        city : this.city,
        zip : this.zip,
        gender : this.gender,
        email : this.email,
        roleId : this.roleId
      };
      return inputJson;
    } else {
      this.signUpApiStatus = 'validationError';
    }
  }

  saveUser(userForm) {
    console.log('in user form');
    const validInputJson = this.prepareRegistrationFormData(userForm);
    if (userForm.valid) {
      this._commonRequestResponseService.post('user.php?action=save_user_data', validInputJson)
      .subscribe((res) => {
        if (res) {
          console.log('userData--', res);
          this.signUpApiStatus = 'success';
          userForm.reset();
        }
      }, (err) => {
          this.signUpApiStatus = 'error';
      });
    }
  }

  prepareLoginFormData(provider, signuploginForm) {
    console.log('loginForm.valid--', signuploginForm.valid);
    if (signuploginForm.valid) {
      this.loginApiStatus = '';
      switch (provider) {
        // case 'facebook':
        //   this.loginWithFacebook();
        //   break;
        // case 'google':
        //   this.loginWithGoogle();
        //   break;
        case 'default':
          this.defaultLogin();
          break;
      }
    } else {
      this.loginApiStatus = 'validationError';
    }
  }

  login(provider, signuploginForm) {
    const validInputJson = this.prepareLoginFormData(provider, signuploginForm);
  }

  defaultLogin() {
    console.log('this.username--', this.username);
    console.log('this.userpassword--', this.userpassword);
    if (this.username === 'hotel' && this.userpassword === 'hotel') {
      this.setLoginData();
      this.loadContainer();
      console.log('login Successfull');
      this.loginApiStatus = 'success';
    } else if (this.username === 'artist' && this.userpassword === 'artist') {
      this.setLoginData();
      this.loadContainer();
      console.log('login Successfull');
      this.loginApiStatus = 'success';
    } else {
      this.loginApiStatus = 'error';
    }
  }

  loginWithFacebook() {
    this.fb.login()
      .then((res: LoginResponse) => {
        console.log('facebook res--', res);
        this.setLoginData();
        this.getFacebookProfileData(res.authResponse.userID);

      })
      .catch(this.handleError);
  }

  getFacebookProfileData(userID) {
    this.fb.api('/' + userID + '/?fields=id,name,picture.type(large),email,first_name,last_name')
      .then((res: any) => {
        console.log('Got the users profile', res);
        this.loginApiStatus = 'success';
        this.loadContainer();
      })
      .catch(this.handleError);
  }

  loginWithGoogle() {
    const provider = 'google';
    this.sub = this._auth.login(provider).subscribe(
      (data) => {
        this.user = data;
        this.loginApiStatus = 'success';
        this.setLoginData();
        this.loadContainer();
        console.log('google res', this.user);
      }, (error) => {
        console.log('error--', error);
      }
    );
  }

  private handleError(error) {
    this.loginApiStatus = 'error';
    console.error('Error processing action', error);
  }

  loadContainer() {
    this._commonDataSharedService.loginStatus.next(true);
    if (this.username === 'artist') {
      this._router.navigate(['../artist/dashboard'], { relativeTo: this._routes });
    } else if (this.username === 'hotel') {
      this._router.navigate(['../hotel/dashboard'], { relativeTo: this._routes });
    }
  }

  setLoginData() {
    const loginData = {username : this.username , password : this.userpassword};
    this._commonAuthenticationService.setLoginData(loginData);
  }

  showDatePicker() {
    const that = this;
    const start = new Date();
    start.setFullYear(start.getFullYear() - 100);
    const end = new Date();
    end.setFullYear(end.getFullYear());
    $('#datepicker').show();
      $('#datepicker').datepicker({
        format: 'dd-mm-yyyy',
        changeMonth: true,
        changeYear: true,
        minDate: start,
        maxDate: end,
        yearRange: start.getFullYear() + ':' + end.getFullYear()
      }).on('change', function() {
        that.dob = $('#datepicker').val();
      });
  }
}
