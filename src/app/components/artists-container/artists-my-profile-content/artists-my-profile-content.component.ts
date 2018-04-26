import { Component, OnInit } from '@angular/core';
import {
  CommonAuthenticationService, CommonDataSharedService, CommonRequestResponseService
} from '../../../services/common-services';
@Component({
  selector: 'app-artists-my-profile-content',
  templateUrl: './artists-my-profile-content.component.html',
  styleUrls: ['./artists-my-profile-content.component.css']
})
export class ArtistsMyProfileContentComponent implements OnInit {

  constructor(public _commonDataSharedService: CommonDataSharedService) { }

  ngOnInit() {
  }

  loadCalendar() {
    this._commonDataSharedService.loadCalendar.next(true);
  }

}
