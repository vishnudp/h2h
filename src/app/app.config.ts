import { OpaqueToken } from '@angular/core';
import { IAppConfig } from './app.config.shared';

export let APP_CONFIG = new OpaqueToken('app.config');



export const AppConfig: IAppConfig = {
  apiEndpoint: 'http://demo.konnectarchin.com/h2hArtistApi/api/',
  homeSliderImagesPath: 'http://demo.konnectarchin.com/h2hArtist/uploads/slider_pics/',
  sponsorImagePath: 'http://demo.konnectarchin.com/h2hArtist/uploads/sponser/',
  artistCategoryImagesPath : 'http://demo.konnectarchin.com/h2hArtist/uploads/artistcategorys/'
};

declare function require(moduleName: string): any;

export const {version : AppVersion} = require('./../../package.json');
