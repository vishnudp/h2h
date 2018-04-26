import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HashLocationStrategy, LocationStrategy } from '@angular/common';
import { AppComponent } from './app.component';

import { AppRoutingModule } from './app-routing.module';
import { APP_CONFIG, AppConfig } from './app.config';
import * as svc from './services';

/* Auth Component */
import { SignupComponent } from './components/auth-container/signup/signup.component';
import { LoginComponent } from './components/auth-container/login/login.component';

/* main component */
import { ContainerComponent } from './components/container/container.component';
import { WithoutLoginContainerComponent } from './components/without-login-container/without-login-container.component';
import { AfterLoginContainerComponent } from './components/after-login-container/after-login-container.component';
import { WithoutLoginPageContentComponent } from './components/without-login-page-content/without-login-page-content.component';
import { AfterLoginPageContentComponent } from './components/after-login-page-content/after-login-page-content.component';

/* Sperate Module as per Subparts of project */
import { SharedModule } from './components/shared/shared.module';
import { ArtistsModule } from './artists/artists.module';
import { HotelsModule } from './hotels/hotels.module';
import { FormsModule } from '@angular/forms';
import { FacebookModule } from 'ngx-facebook';
import { Angular2SocialLoginModule } from "angular2-social-login";


let providers = {
  "google": {
    "clientId": "109739933766-nh2c92re0ss4r38hptp40tiptof50g1c.apps.googleusercontent.com"
  },
  "linkedin": {
    "clientId": "LINKEDIN_CLIENT_ID"
  }
};

@NgModule({
  declarations: [
    AppComponent,
    ContainerComponent,
    WithoutLoginContainerComponent,
    AfterLoginContainerComponent,
    WithoutLoginPageContentComponent,
    AfterLoginPageContentComponent,
    SignupComponent,
    LoginComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    AppRoutingModule,
    SharedModule,
    ArtistsModule,
    HotelsModule,
    Angular2SocialLoginModule,
    FacebookModule.forRoot()
  ],
  providers: [
    { provide: APP_CONFIG, useValue: AppConfig },
    { provide: LocationStrategy, useClass: HashLocationStrategy },
    svc.CommonRequestResponseService,
    svc.CommonAuthenticationService,
    svc.CommonDataSharedService,
    svc.GeneralApiFunctionsService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
Angular2SocialLoginModule.loadProvidersScripts(providers);
