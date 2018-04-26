import { Component, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../../app.config';
import { IAppConfig } from '../../../../app.config.shared';
import {
  CommonRequestResponseService
} from '../../../../services/common-services';
@Component({
  selector: 'app-footer-widget-list-item',
  templateUrl: './footer-widget-list-item.component.html',
  styleUrls: ['./footer-widget-list-item.component.css']
})
export class FooterWidgetListItemComponent implements OnInit {
  currentPageData = { page_title: '', page_description: '' };
  loadContentStatus = false;
  constructor(@Inject(APP_CONFIG) private config: IAppConfig,private _commonRequestResponseService: CommonRequestResponseService) { }

  ngOnInit() {
    this.getCurrentPageData();
  }

  getCurrentPageData() {
    this._commonRequestResponseService.post('page.php?action=get_page_data', {'pageSlug':'about-us'})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.currentPageData = res[0];
          this.loadContentStatus = true;
        }
      }, (err) => {
        console.log('got Error', err);
      });
  }

}
