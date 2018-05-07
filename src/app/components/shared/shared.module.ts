import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { HeaderComponent } from './shared-header/header/header.component';
import { TopHeaderComponent } from './shared-header/top-header/top-header.component';
import { MainHeaderComponent } from './shared-header/main-header/main-header.component';
import { LogoComponent } from './shared-header/logo/logo.component';
import { MainMenuComponent } from './shared-header/main-menu/main-menu.component';
import { LeftHeaderComponent } from './shared-header/left-header/left-header.component';
import { RightHeaderComponent } from './shared-header/right-header/right-header.component';
import { HomeSearchFormComponent } from './shared-container/home-page-container/home-search-form/home-search-form.component';
import { HomeArtistContainerComponent } from './shared-container/home-page-container/home-artist-container/home-artist-container.component';
import { ArtistCategoryComponent } from './shared-container/home-page-container/artist-category/artist-category.component';
import { ArtistCategoryListComponent } from './shared-container/home-page-container/artist-category/artist-category-list/artist-category-list.component';
import { ArtistByCategoryComponent } from './shared-container/home-page-container/artist-category/artist-category-list/artist-by-category/artist-by-category.component';
import { ArtistProfileComponent } from './shared-container/home-page-container/artist-category/artist-category-list/artist-by-category/artist-profile/artist-profile.component';
import { HomeSponsorsContainerComponent } from './shared-container/home-page-container/home-sponsors-container/home-sponsors-container.component';
import { TestimonialContainerComponent } from './shared-container/home-page-container/testimonial-container/testimonial-container.component';
import { TestimonialSliderComponent } from './shared-container/home-page-container/testimonial-slider/testimonial-slider.component';
import { FooterComponent } from './shared-footer/footer/footer.component';
import { FooterWidgetListComponent } from './shared-footer/footer-widget-list/footer-widget-list.component';
import { FooterWidgetListItemComponent } from './shared-footer/footer-widget-list-item/footer-widget-list-item.component';
import { FooterBottomComponent } from './shared-footer/footer-bottom/footer-bottom.component';
import { FooterBottomRightComponent } from './shared-footer/footer-bottom/footer-bottom-right/footer-bottom-right.component';
import { FooterBottomCenterComponent } from './shared-footer/footer-bottom/footer-bottom-center/footer-bottom-center.component';
import { FooterBottomLeftComponent } from './shared-footer/footer-bottom/footer-bottom-left/footer-bottom-left.component';
import { SliderComponent } from './shared-container/home-page-container/slider/slider.component';
import { SliderContainerComponent } from './shared-container/home-page-container/slider-container/slider-container.component';
import { HomePageContentComponent } from './shared-container/home-page-container/home-page-content/home-page-content.component';
import { AboutUsComponent } from './shared-container/static-page-container/static-pages/about-us/about-us.component';
import { PopularEventsComponent } from './shared-container/static-page-container/static-pages/popular-events/popular-events.component';
import { ContactUsComponent } from './shared-container/static-page-container/static-pages/contact-us/contact-us.component';
import { FaqComponent } from './shared-container/static-page-container/static-pages/faq/faq.component';
import { HelpComponent } from './shared-container/static-page-container/static-pages/help/help.component';
import { BlogComponent } from './shared-container/static-page-container/static-pages/blog/blog.component';
import { ArtistsViewProfilePublicComponent } from './shared-container/home-page-container/artists-view-profile-public/artists-view-profile-public.component';
import { ArtistsPageSliderContentComponent } from './../artists-container/artists-page-slider-content/artists-page-slider-content.component';
import { ArtistsViewProfileContentComponent } from './../artists-container/artists-view-profile-content/artists-view-profile-content.component';
import { CalendarComponent } from 'ap-angular2-fullcalendar/src/calendar/calendar';
import { ArtistsCatalogueVideosContentComponent } from './../../components/artists-container/artists-catalogue-videos-content/artists-catalogue-videos-content.component';
import { ArtistsCataloguePhotosContentComponent } from './../../components/artists-container/artists-catalogue-photos-content/artists-catalogue-photos-content.component';
import { ArtistsCalendarContentComponent } from './../../components/artists-container/artists-calendar-content/artists-calendar-content.component';
import { LoginWithSocialMediaComponent } from './../../components/auth-container/login-with-social-media/login-with-social-media.component';
import { BookingListComponent } from './shared-container/home-page-container/booking-list/booking-list.component';
// Directive
import { FileChooseDirective } from './../../directive/file-chooser.directive';
import { AngularMultiSelectModule } from 'angular2-multiselect-dropdown/angular2-multiselect-dropdown';

import { SharedRoutingModule } from'./shared-routing.module';
import { NgUploaderModule  } from 'ngx-uploader';
@NgModule({
    declarations: [
        HeaderComponent,
        TopHeaderComponent,
        MainHeaderComponent,
        LogoComponent,
        MainMenuComponent,
        LeftHeaderComponent,
        RightHeaderComponent,
        HomeSearchFormComponent,
        HomeArtistContainerComponent,
        ArtistCategoryComponent,
        ArtistCategoryListComponent,
        ArtistByCategoryComponent,
        ArtistProfileComponent,
        HomeSponsorsContainerComponent,
        TestimonialContainerComponent,
        TestimonialSliderComponent,
        FooterComponent,
        FooterWidgetListComponent,
        FooterWidgetListItemComponent,
        FooterBottomComponent,
        FooterBottomRightComponent,
        FooterBottomCenterComponent,
        FooterBottomLeftComponent,
        SliderComponent,
        SliderContainerComponent,
        HomePageContentComponent,
        AboutUsComponent,
        PopularEventsComponent,
        ContactUsComponent,
        FaqComponent,
        HelpComponent,
        BlogComponent,
        ArtistsViewProfilePublicComponent,
        ArtistsPageSliderContentComponent,
        ArtistsViewProfileContentComponent,
        FileChooseDirective,
        CalendarComponent,
        ArtistsCatalogueVideosContentComponent,
        ArtistsCataloguePhotosContentComponent,
        ArtistsCalendarContentComponent,
        LoginWithSocialMediaComponent,
        BookingListComponent
    ],
    imports: [
        FormsModule,
        ReactiveFormsModule,
        HttpModule,
        CommonModule,
        NgUploaderModule,
        SharedRoutingModule,
        AngularMultiSelectModule
    ],
    exports: [
        HeaderComponent,
        TopHeaderComponent,
        MainHeaderComponent,
        LogoComponent,
        MainMenuComponent,
        LeftHeaderComponent,
        RightHeaderComponent,
        HomeSearchFormComponent,
        HomeArtistContainerComponent,
        ArtistCategoryComponent,
        ArtistCategoryListComponent,
        ArtistByCategoryComponent,
        ArtistProfileComponent,
        HomeSponsorsContainerComponent,
        TestimonialContainerComponent,
        TestimonialSliderComponent,
        FooterComponent,
        FooterWidgetListComponent,
        FooterWidgetListItemComponent,
        FooterBottomComponent,
        FooterBottomRightComponent,
        FooterBottomCenterComponent,
        FooterBottomLeftComponent,
        SliderComponent,
        SliderContainerComponent,
        HomePageContentComponent,
        AboutUsComponent,
        PopularEventsComponent,
        ContactUsComponent,
        FaqComponent,
        HelpComponent,
        BlogComponent,
        ArtistsViewProfilePublicComponent,
        ArtistsPageSliderContentComponent,
        ArtistsViewProfileContentComponent,
        FileChooseDirective,
        CalendarComponent,
        NgUploaderModule,
        AngularMultiSelectModule,
        ArtistsCatalogueVideosContentComponent,
        ArtistsCataloguePhotosContentComponent,
        ArtistsCalendarContentComponent,
        LoginWithSocialMediaComponent,
        BookingListComponent
    ],
    providers: []
})
export class SharedModule { }
