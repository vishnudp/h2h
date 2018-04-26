import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import {
  CommonAuthenticationService, CommonDataSharedService
} from '../../../services/common-services';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  public user;
  sub: any;
  username = 'artist';
  userpassword = 'artist';
  loginApiStatus = '';
  constructor(
              public _commonAuthenticationService: CommonAuthenticationService,
              public _commonDataSharedService: CommonDataSharedService,
              private _router: Router,
              private _routes: ActivatedRoute) {
   
  }

  ngOnInit() {
    this.getLoginData();
  }

  getLoginData() {
    const loginData = this._commonAuthenticationService.getLoginData();
    console.log('loginData--', loginData);
    if (loginData) {
      this.loadContainer();
    } else {
      this._router.navigate(['../login'], { relativeTo: this._routes });
    }
  }

  login(provider) {
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
  }

  defaultLogin() {
    console.log('this.username--', this.username);
    console.log('this.userpassword--', this.userpassword);
    if (this.username === 'hotel' && this.userpassword === 'hotel') {
      this.setLoginData();
      this.loadContainer();
      // this._router.navigate(['../myProfile'], { relativeTo: this._routes });
      console.log('login Successfull');
      this.loginApiStatus = 'success';
    } else if (this.username === 'artist' && this.userpassword === 'artist') {
      this.setLoginData();
      this.loadContainer();
      // this._router.navigate(['../myProfile'], { relativeTo: this._routes });
      console.log('login Successfull');
      this.loginApiStatus = 'success';
    } else {
      this.loginApiStatus = 'error';
    }
  }

  // loginWithFacebook() {
  //   this.fb.login()
  //     .then((res: LoginResponse) => {
  //       console.log('facebook res--', res);
  //       this.setLoginData();
  //       this.getFacebookProfileData(res.authResponse.userID);

  //     })
  //     .catch(this.handleError);
  // }

  // getFacebookProfileData(userID) {
  //   this.fb.api('/' + userID + '/?fields=id,name,picture.type(large),email,first_name,last_name')
  //     .then((res: any) => {
  //       console.log('Got the users profile', res);
  //       this.loginApiStatus = 'success';
  //       this.loadContainer();
  //     })
  //     .catch(this.handleError);
  // }

  // loginWithGoogle() {
  //   const provider = 'google';
  //   this.sub = this._auth.login(provider).subscribe(
  //     (data) => {
  //       this.user = data;
  //       this.loginApiStatus = 'success';
  //       this.setLoginData();
  //       this.loadContainer();
  //       console.log('google res', this.user);
  //     }, (error) => {
  //       console.log('error--', error);
  //     }
  //   );
  // }

  private handleError(error) {
    this.loginApiStatus = 'error';
    console.error('Error processing action', error);
  }

  loadContainer() {
    this._commonDataSharedService.loginStatus.next(true);
    if (this.username === 'artist') {
      this._router.navigate(['../artist/myProfile'], { relativeTo: this._routes });
    } else if (this.username === 'hotel') {
      this._router.navigate(['../hotel/myProfile'], { relativeTo: this._routes });
    }
  }

  setLoginData() {
    const loginData = {username : this.username , password : this.userpassword};
    this._commonAuthenticationService.setLoginData(loginData);
  }

}
