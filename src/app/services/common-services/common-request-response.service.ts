import { Inject, Injectable } from '@angular/core';
import { Headers, Http, RequestOptions, Response } from '@angular/http';
import { ActivatedRoute, Router } from '@angular/router';
import 'rxjs/add/observable/throw';
import 'rxjs/add/operator/catch'
import 'rxjs/add/operator/map'
import { Observable } from 'rxjs/Observable';

import { APP_CONFIG } from '../../app.config';
import { IAppConfig } from '../../app.config.shared';
// import {
//   CommonAuthenticationService, CommonDataSharedService, RouteDataService
// } from './'
@Injectable()
export class CommonRequestResponseService {
  partnerId: any;
  loginDetail;
  headers = new Headers({
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  }); // variable used to store headers field values
  options = new RequestOptions({ headers: this.headers });

  completeUrl = '';
  classificationData: any = {};
  notificationCount = 0;
  constructor(private http: Http,
    @Inject(APP_CONFIG) private config: IAppConfig) {}

  get(url): Observable<any[]> {

    return this.http.get(url).
      map(res => res.json());
  }


  postForThirdParty(url, inputData) {
    this.completeUrl = url;
    return this.http.post(this.completeUrl, inputData)
      .map(this.mapData)
      .catch(this.catchError.bind(this));
  }

  post(url, inputData) {
    this.completeUrl = this.config.apiEndpoint + url;
    return this.http.post(this.completeUrl, inputData)
      .map(this.mapData)
      .catch(this.catchError.bind(this));
  }

  postWithoutHeader(url, inputData) {
    this.completeUrl = this.config.apiEndpoint + url;
    return this.http.post(this.completeUrl, inputData)
      .map(this.mapData)
      .catch(this.catchError.bind(this));
  }

  delete(url, inputData) {
    this.completeUrl = this.config.apiEndpoint + url;
    const test = new RequestOptions({ headers: this.headers, body: inputData });
    return this.http.delete(this.completeUrl, test)
      .map(this.mapData)
      .catch(this.catchError.bind(this));
  }

  postWithHeaderWithoutData(url) {
    this.completeUrl = this.config.apiEndpoint + url;
    return this.http.post(this.completeUrl, this.options)
      .map(this.mapData)
      .catch(this.catchError.bind(this));
  }

  postWithHeader(url, inputData, defaultParam = []) {
    const completeUrl = this.config.apiEndpoint + url;
    // let existData = this.checknGetClassificationData(completeUrl, inputData);
    // if(existData) {
    //    return existData;
    // }

    return this.http.post(completeUrl, inputData, this.options)
      .map(this.mapData)
      .catch(this.catchError.bind(this));
  }

  postWithStaticHeaderData(url, inputData) {
    this.completeUrl = this.config.apiEndpoint + url;
    return this.http.post(this.completeUrl, inputData, this.options)
      .map(this.mapData)
      .catch(this.catchError.bind(this));
  }

  putWithHeader(url, inputData, defaultParam = []) {
    this.completeUrl = this.config.apiEndpoint + url;
    return this.http.put(this.completeUrl, inputData, this.options)
      .map(this.mapData)
      .catch(this.catchError.bind(this));
  }


  mapData(response: Response) {
    const data = response.json();
    if (data) {
      return data;
    }
  }

  catchError(error: Response) {
    return Observable.throw(error.json());
  }

  


}
