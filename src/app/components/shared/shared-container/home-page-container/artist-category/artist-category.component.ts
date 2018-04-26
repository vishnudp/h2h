import { Component, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../../../app.config';
import { IAppConfig } from '../../../../../app.config.shared';
import {
  CommonRequestResponseService
} from '../../../../../services/common-services';
@Component({
  selector: 'app-artist-category',
  templateUrl: './artist-category.component.html',
  styleUrls: ['./artist-category.component.css']
})
export class ArtistCategoryComponent implements OnInit {
  artistCategoryData = [];
  constructor(@Inject(APP_CONFIG) private config: IAppConfig,private _commonRequestResponseService: CommonRequestResponseService) { }

  ngOnInit() {
    this.getArtistCategory();
  }

  getArtistCategory() {
    this._commonRequestResponseService.post('artist-category.php?action=get_artist_category', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0)
          this.artistCategoryData = res;
      }, (err) => {
        console.log('got Error', err);
      })
  }

}
