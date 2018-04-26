import { Component, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../../../app.config';
import { IAppConfig } from '../../../../../app.config.shared';
import {
  CommonRequestResponseService
} from '../../../../../services/common-services';
@Component({
  selector: 'app-slider',
  templateUrl: './slider.component.html',
  styleUrls: ['./slider.component.css']
})
export class SliderComponent implements OnInit {

  constructor(@Inject(APP_CONFIG) private config: IAppConfig, private _commonRequestResponseService: CommonRequestResponseService) { }
  sliderData= [] ;
  homeSliderImagesPath;
  loadContentStatus = false;
  ngOnInit() {
    this.homeSliderImagesPath = this.config.homeSliderImagesPath;
    this.getSliderData();
  }

  getSliderData() {
    this._commonRequestResponseService.post('home-slider.php?action=get_home_slider_data', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.loadContentStatus = true;
          this.sliderData = res;
        }
      }, (err) => {
        this.loadContentStatus = false;
        console.log('got Error', err);
      });

  }

}
