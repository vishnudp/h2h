import { NgModule } from '@angular/core';
import { Routes, RouterModule, RouterLink } from '@angular/router';

import { SignupComponent } from './../../components/auth-container/signup/signup.component';
import { FaqComponent } from './shared-container/static-page-container/static-pages/faq/faq.component';
import { HelpComponent } from './shared-container/static-page-container/static-pages/help/help.component';
import { BlogComponent } from './shared-container/static-page-container/static-pages/blog/blog.component';
import { LoginComponent } from '../auth-container/login/login.component';
import { AboutUsComponent } from './shared-container/static-page-container/static-pages/about-us/about-us.component';
import { PopularEventsComponent } from './shared-container/static-page-container/static-pages/popular-events/popular-events.component';
import { ContactUsComponent } from './shared-container/static-page-container/static-pages/contact-us/contact-us.component';
import { AfterLoginPageContentComponent } from './../../components/after-login-page-content/after-login-page-content.component';
// import { PublicComponent } from './public/public.component';
// import {RecruiterComponent} from './recruiter/recruiter.component';
// import {ContractorComponent} from './contractor/contractor.component';


const appRoutes: Routes =
//  [{
//     "path": "",
//     "component": ContentComponent
// }, {
//     "path": "recruiters/register",
//     "component": RecruiterSignUpComponent
// }, {
//     "path": "contractors/register",
//     "component": ContractorSignUpComponent
// }, {
//     "path": "contractors/profile",
//     "component": ContractorProfileComponent
// }, {
//     "path": "contractors/view-profile",
//     "component": ContractorViewProfileComponent
// }, {
//     "path": "recruiters/manage-password",
//     "component": RecruiterManagePasswordComponent
// }, {
//     "path": "recruiters/manage-account",
//     "component": RecruiterManageAccountComponent
// }, {
//     "path": "recruiters/profile",
//     "component": RecruiterManageProfileComponent
// }, {
//     "path": "recruiters/manage-user",
//     "component": RecruiterManageUserComponent
// }]

/*
{

    "path": "recruiter",
    "component": RecruiterComponent,
    "loadChildren": "./recruiter/recruiter.module#RecruiterModule"
},{

    "path": "contractor",
    "component": ContractorComponent,
    "loadChildren": "./contractor/contractor.module#ContractorModule"
}
*/

[{

    "path": "signup",
    "component": SignupComponent
},{

    "path": "faq",
    "component": FaqComponent
},{

    "path": "help",
    "component": HelpComponent
},{

    "path": "blog",
    "component": BlogComponent
},{

    "path": "login",
    "component": LoginComponent
},{

    "path": "about-us",
    "component": AboutUsComponent
},{

    "path": "popular-events",
    "component": PopularEventsComponent
},{

    "path": "contact-us",
    "component": ContactUsComponent
},{
    "path" : "myProfile",
    "component": AfterLoginPageContentComponent
}]

@NgModule({
    imports:[RouterModule.forRoot(appRoutes , { useHash: true })],
    exports: [RouterModule]
})
export class SharedRoutingModule {


}