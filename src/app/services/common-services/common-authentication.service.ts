
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';

// import { LoginInfo } from '../models'
@Injectable()
export class CommonAuthenticationService {

  // loginData: LoginInfo;
  loginData;
  partnerData;
  constructor() { }


  clearLoginInfo() {
    localStorage.removeItem('loginUserData');
    // localStorage.removeItem('partnerDetail');
    // localStorage.removeItem('currentPageData');
    // localStorage.removeItem('partnerIdForMessageAndCoaching');
    // this.loginData = null;
  }

  // getToken() {
  //   return this.getLoginData().token;
  // }

  getLoginData() {
    console.log(localStorage.getItem('loginUserData'));
    if (localStorage.getItem('loginUserData') && localStorage.getItem('loginUserData') !== '') {
      this.loginData = JSON.parse(localStorage.getItem('loginUserData'));
    } else {
      this.loginData = '';
    }

    return this.loginData;
  }

  // getModule() {
  //   return this.getLoginData().module.trim().toLowerCase();
  // }
  // getPartnerDetailData() {
  //   if (!this.partnerData && localStorage.getItem('partnerDetail') && localStorage.getItem('partnerDetail') !== '') {
  //     this.partnerData = JSON.parse(localStorage.getItem('partnerDetail'))
  //   }
  //   return this.partnerData;
  // }

  // getPartnerId() {
  //   return this.getLoginData() ? this.loginData.partnerId : '1';
  // }

  // getProfileId() {
  //   return this.getLoginData().profileId;
  // }

  // getRoleName() {
  //   return this.getLoginData().role;
  // }

  // getUserFullName() {
  //   return `${this.getLoginData().firstName}  ${this.getLoginData().lastName}`;
  // }

  // getUserId() {
  //   return this.getLoginData().userId;
  // }

  // isSenior(): boolean {
  //   if (this.getLoginData().classYearDescription) {
  //    return  this.getLoginData().classYearDescription.toLowerCase() === 'senior';
  //   }

  // }

  setLoginData(loginData) {
    localStorage.setItem('loginUserData', JSON.stringify(loginData));
  }



}
