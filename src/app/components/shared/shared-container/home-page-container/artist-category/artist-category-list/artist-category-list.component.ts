import { Component,Inject,  Input, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../../../../app.config';
import { IAppConfig } from '../../../../../../app.config.shared';
@Component({
  selector: 'app-artist-category-list',
  templateUrl: './artist-category-list.component.html',
  styleUrls: ['./artist-category-list.component.css']
})
export class ArtistCategoryListComponent implements OnInit {
  @Input() artistCategoryData;
  artistCategoryImagesPath;
  loadContentStatus = false;
  constructor(@Inject(APP_CONFIG) private config: IAppConfig) { }

  ngOnInit() {
    if ( this.config.artistCategoryImagesPath && this.config.artistCategoryImagesPath.length > 0 ) {
      this.artistCategoryImagesPath = this.config.artistCategoryImagesPath;
      this.loadContentStatus = true;
    }
  }

}
