import { Component, OnInit } from '@angular/core';
import {
  CommonAuthenticationService
} from '../../services/common-services';
@Component({
  selector: 'app-after-login-container',
  templateUrl: './after-login-container.component.html',
  styleUrls: ['./after-login-container.component.css']
})
export class AfterLoginContainerComponent implements OnInit {

  constructor(public _commonAuthenticationService: CommonAuthenticationService) { }
  loginData;
  ngOnInit() {
    this.getLoginData();
  }

  getLoginData() {
    const loginData = this._commonAuthenticationService.getLoginData();
    if (loginData) {
      this.loginData = loginData;
    }
  }

}
