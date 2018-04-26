import { Component, OnInit } from '@angular/core';
import { AuthService } from 'angular2-social-login';
import { ActivatedRoute, Router } from '@angular/router';
import { FacebookService, LoginResponse, LoginOptions, UIResponse, UIParams, FBVideoComponent } from 'ngx-facebook';
import {
  CommonAuthenticationService, CommonDataSharedService
} from '../../../services/common-services';
import {
  CommonRequestResponseService,
  GeneralApiFunctionsService
} from '../../../services';
@Component({
  selector: 'app-login-with-social-media',
  templateUrl: './login-with-social-media.component.html',
  styleUrls: ['./login-with-social-media.component.css']
})
export class LoginWithSocialMediaComponent implements OnInit {
  public user;
  sub: any;
  loginApiStatus = '';
  username = 'artist';
  userpassword = 'artist';
  roleData: any;
  roleId = '';
  provider = '';
  constructor(public _auth: AuthService,
    public fb: FacebookService,
    public _commonAuthenticationService: CommonAuthenticationService,
    public _commonDataSharedService: CommonDataSharedService,
    private _router: Router,
    private _routes: ActivatedRoute,
    private _commonRequestResponseService: CommonRequestResponseService,
    private _generalApiFunctionsService: GeneralApiFunctionsService) {
    this.fb.init({
      appId: '257126294373864',
      version: 'v2.9'
    });
  }

  ngOnInit() {
    this.getUserRoleData();
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

  login(provider) {
    this.provider = provider;
  }

  setSocialLoginForm() {
    switch (this.provider) {
      case 'facebook':
        this.loginWithFacebook();
        break;
      case 'google':
        this.loginWithGoogle();
        break;
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
    // this.loginApiStatus = 'error';
    console.error('Error processing action', error);
  }

  loadContainer() {
    this._commonDataSharedService.loginStatus.next(true);
    if (this.roleId === '5') {
      this.username = 'artist';
      this.userpassword = 'artist';
      this._router.navigate(['../artist/myProfile'], { relativeTo: this._routes });
    } else if (this.roleId === '4') {
      this.username = 'hotel';
      this.userpassword = 'hotel';
      this._router.navigate(['../hotel/myProfile'], { relativeTo: this._routes });
    }
  }

  setLoginData() {
    const loginData = {username : this.username , password : this.userpassword};
    this._commonAuthenticationService.setLoginData(loginData);
  }

}
