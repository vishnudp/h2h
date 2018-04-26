import { Component, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../../../../app.config';
import { IAppConfig } from '../../../../../../app.config.shared';
import {
  CommonRequestResponseService
} from '../../../../../../services/common-services';
@Component({
  selector: 'app-about-us',
  templateUrl: './about-us.component.html',
  styleUrls: ['./about-us.component.css']
})
export class AboutUsComponent implements OnInit {
  currentPageData = { page_title: '', page_description: '' };
  loadContentStatus = false;
  constructor(@Inject(APP_CONFIG) private config: IAppConfig,private _commonRequestResponseService: CommonRequestResponseService) { }


  ngOnInit() {
    this.getCurrentPageData();
  }

  getCurrentPageData() {
    this._commonRequestResponseService.post('page.php?action=get_page_data', {'pageSlug': 'about-us'})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.loadContentStatus = true;
          this.currentPageData = res[0];
        }
      }, (err) => {
        this.loadContentStatus = false;
        console.log('got Error', err);
      });
  }

}
