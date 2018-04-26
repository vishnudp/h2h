import { Component, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../../../app.config';
import { IAppConfig } from '../../../../../app.config.shared';
import {
  CommonRequestResponseService
} from '../../../../../services/common-services';
@Component({
  selector: 'app-home-sponsors-container',
  templateUrl: './home-sponsors-container.component.html',
  styleUrls: ['./home-sponsors-container.component.css']
})
export class HomeSponsorsContainerComponent implements OnInit {
  sponsorData = [];
  sponsorImagesPath;
  loadContentStatus = false;
  constructor(@Inject(APP_CONFIG) private config: IAppConfig, private _commonRequestResponseService: CommonRequestResponseService) { }

  ngOnInit() {
    this.sponsorImagesPath = this.config.sponsorImagePath;
    this.getSponserData();
  }

  getSponserData() {
    this._commonRequestResponseService.post('sponsor.php?action=get_sponsor_data', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.sponsorData = res;
          this.loadContentStatus = true;
        }
      }, (err) => {
        console.log('got Error', err);
      });
  }

}
