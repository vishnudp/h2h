import { Component, Inject, OnInit, OnDestroy } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Subscription } from 'rxjs/Subscription';

import {
  CommonRequestResponseService
} from '../../../../../../../services/common-services';
import { APP_CONFIG } from '../../../../../../../app.config';
import { IAppConfig } from '../../../../../../../app.config.shared';
@Component({
  selector: 'app-artist-by-category',
  templateUrl: './artist-by-category.component.html'
})
export class ArtistByCategoryComponent implements OnInit, OnDestroy {
  //@Input() artistCategoryData;
  artistCategoryImagesPath;
  loadContentStatus = false;
  routeParamSubs : Subscription;
  artistByCategoryData : any[] = [];
  constructor(
    @Inject(APP_CONFIG) private config: IAppConfig,
    private route : ActivatedRoute,
    private _commonRequestResponseService : CommonRequestResponseService
    ) { }

  ngOnInit() {
    if ( this.config.artistCategoryImagesPath && this.config.artistCategoryImagesPath.length > 0 ) {
      this.artistCategoryImagesPath = this.config.artistCategoryImagesPath;
      this.loadContentStatus = true;
    }
    this.routeParamSubs = this.route.params.subscribe(({id})=>this.getArtistByCategory(id))
  }

  getArtistByCategory(id) {
    this._commonRequestResponseService.post('artists-by-category.php?action=get_artists_by_category', {artist_category: id})
      .subscribe((res) => {
        console.log("resqqq",res);
        if (res && res.length) {
          res.map((obj)=>{
            obj.user_logo_info = JSON.parse(obj.user_logo_info);
          })
          this.artistByCategoryData = res;
        }
      }, err => console.log('got Error', err))
  }

  ngOnDestroy() {
    this.routeParamSubs.unsubscribe();
  }

  onArtistClick = (item)=> {
      console.log("this.artistCategoryData",item);
  }

}
