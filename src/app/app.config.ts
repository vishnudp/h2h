import { OpaqueToken } from '@angular/core';
import { IAppConfig } from './app.config.shared';

export let APP_CONFIG = new OpaqueToken('app.config');



export const AppConfig: IAppConfig = {
  apiEndpoint: 'http://localhost/h2hArtistApi/api/',
  homeSliderImagesPath: 'http://localhost/h2hArtist/uploads/slider_pics/',
  sponsorImagePath: 'http://localhost/h2hArtist/uploads/sponser/',
  artistCategoryImagesPath : 'http://localhost/h2hArtist/uploads/artistcategorys/'
};

declare function require(moduleName: string): any;

export const {version : AppVersion} = require('./../../package.json');
