import { NgModule } from '@angular/core';
import { Routes, RouterModule,RouterLink } from '@angular/router';
import { WithoutLoginPageContentComponent } from './components/without-login-page-content/without-login-page-content.component';
import { AfterLoginContainerComponent } from './components/after-login-container/after-login-container.component';
import { AfterLoginPageContentComponent } from './components/after-login-page-content/after-login-page-content.component';
import { AboutUsComponent } from './components/shared/shared-container/static-page-container/static-pages/about-us/about-us.component';

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

    "path": "",
    "component": WithoutLoginPageContentComponent
}, {

    "path": "",
    'redirectTo': '/',
    'pathMatch': 'full'
}]

@NgModule({
    imports:[RouterModule.forRoot(appRoutes , { useHash: true })],
    exports: [RouterModule]
})
export class AppRoutingModule {


}