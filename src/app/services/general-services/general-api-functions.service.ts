import { Inject, Injectable } from '@angular/core';
import { Headers, Http,  RequestOptions, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
// import 'rxjs/Rx';
import { Subject } from 'rxjs/Subject';

import { APP_CONFIG } from '../../app.config';
import { IAppConfig } from '../../app.config.shared'
import { CommonRequestResponseService } from './../common-services/common-request-response.service';

@Injectable()
export class GeneralApiFunctionsService {
    constructor(private http: Http,
        private _commonRequestResponseService: CommonRequestResponseService,
        @Inject(APP_CONFIG) private config: IAppConfig) { }

    getCountryData() {
        let currentCountryData;
        currentCountryData = this._commonRequestResponseService.post('gereral-functions.php?action=get_country_data', {});
        return currentCountryData;
    }

    getStateData(countryId) {
        let currentCountryStateData;
        currentCountryStateData = this._commonRequestResponseService.post('gereral-functions.php?action=get_state_data', {countryId});
        return currentCountryStateData;
    }

    getRoleData() {
        let userRoleData;
        userRoleData = this._commonRequestResponseService.post('gereral-functions.php?action=get_role_data', {});
        return userRoleData;
    }
}

