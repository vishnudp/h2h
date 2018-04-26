import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import {
  CommonAuthenticationService, CommonDataSharedService
} from '../../services/common-services';
@Component({
  selector: 'app-container',
  templateUrl: './container.component.html',
  styleUrls: ['./container.component.css']
})
export class ContainerComponent implements OnInit {
  loginStatus = false;
  constructor(public _commonAuthenticationService: CommonAuthenticationService, public _commonDataSharedService: CommonDataSharedService,
    private _router: Router,
    private _routes: ActivatedRoute) { }

  ngOnInit() {
    this._commonDataSharedService.loginStatus.subscribe((data) => {
      console.log('data--', data);
      if (data) {
        this.loginStatus = true;
      } else {
        this.loginStatus = false;
      }
    });
  }

}
