import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import {
  CommonAuthenticationService
} from '../../services/common-services';
@Component({
  selector: 'app-after-login-page-content',
  templateUrl: './after-login-page-content.component.html',
  styleUrls: ['./after-login-page-content.component.css']
})

export class AfterLoginPageContentComponent implements OnInit {
  @Input() loginData;
  showArtist;
  constructor(public _commonAuthenticationService: CommonAuthenticationService, 
    private _router: Router,
    private _routes: ActivatedRoute) { }

  ngOnInit() {
    const loginData = this._commonAuthenticationService.getLoginData();
    console.log('loginData--', loginData);
    if (loginData) {
      this.loginData = loginData;
    } else {
      this._router.navigate(['../login'], { relativeTo: this._routes });
    }
    if (loginData && loginData['username'] === 'hotel' && loginData['password'] === 'hotel') {
      this.showArtist = false;
    } else {
      if (loginData && loginData['username'] === 'artist' && loginData['password'] === 'artist') {
        this.showArtist = true;
      }
    }
  }

}
