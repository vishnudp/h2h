import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import {
  CommonAuthenticationService, CommonDataSharedService
} from '../../../../services/common-services';
@Component({
  selector: 'app-right-header',
  templateUrl: './right-header.component.html',
  styleUrls: ['./right-header.component.css']
})
export class RightHeaderComponent implements OnInit {
  loginStatus = false;
  constructor(public _commonAuthenticationService: CommonAuthenticationService,
    public _commonDataSharedService: CommonDataSharedService,
    private _router: Router,
    private _routes: ActivatedRoute) { }
  
  ngOnInit() {
    console.log('in right');
    // this._commonDataSharedService.loginStatus.subscribe((data) => {
    //   console.log('right header -- ', data);
    //   this.getLoginData();
    // });
    this.getLoginData();
  }
  logout() {
    this._commonAuthenticationService.clearLoginInfo();
    this.loginStatus = false;
    this.redirectToLogin();
  }

  redirectToLogin() {
    const loginData = this._commonAuthenticationService.getLoginData();
    if (loginData) {
      this.loginStatus = true;
    } else {
      this.loginStatus = false;
      this._router.navigate(['../login'], { relativeTo: this._routes });
    }
  }

  getLoginData() {
    const loginData = this._commonAuthenticationService.getLoginData();
    console.log('loginData--', loginData);
    if (loginData) {
      this.loginStatus = true;
    } else {
      this.loginStatus = false;
    }
    console.log('loginStatus--', this.loginStatus);
  }

}
