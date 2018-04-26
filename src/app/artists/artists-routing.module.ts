import { NgModule } from '@angular/core';
import { Routes, RouterModule,RouterLink } from '@angular/router';
import { FaqComponent } from './../components/shared/shared-container/static-page-container/static-pages/faq/faq.component';
import { HelpComponent } from './../components/shared/shared-container/static-page-container/static-pages/help/help.component';
import { BlogComponent } from './../components/shared/shared-container/static-page-container/static-pages/blog/blog.component';
import { AboutUsComponent } from './../components/shared/shared-container/static-page-container/static-pages/about-us/about-us.component';
import { PopularEventsComponent } from './../components/shared/shared-container/static-page-container/static-pages/popular-events/popular-events.component';
import { ContactUsComponent } from './../components/shared/shared-container/static-page-container/static-pages/contact-us/contact-us.component';
import { AfterLoginPageContentComponent } from '../components/after-login-page-content/after-login-page-content.component';
import { ArtistsPageContentComponent } from '../components/artists-container/artists-page-content/artists-page-content.component';
import { ArtistsMyProfileContentComponent } from './../components/artists-container/artists-my-profile-content/artists-my-profile-content.component';
// import { PublicComponent } from './public/public.component';
// import {RecruiterComponent} from './recruiter/recruiter.component';
// import {ContractorComponent} from './contractor/contractor.component';



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
const appRoutes: Routes =
[{

    'path': 'artists/dashboard',
    'component': ArtistsMyProfileContentComponent
}]

@NgModule({
    imports:[RouterModule.forRoot(appRoutes , { useHash: true })],
    exports: [RouterModule]
})
export class ArtistsRoutingModule {


}