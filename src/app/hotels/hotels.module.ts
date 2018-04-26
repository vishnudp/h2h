import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { HotelsContainerComponent } from './../components/hotels-container/hotels-container.component';
import { HotelsComponent } from './../hotels/hotels.component';
import { HotelsPageContentComponent } from './../components/hotels-container/hotels-page-content/hotels-page-content.component';
import { HotelsBookingContentComponent } from './../components/hotels-container/hotels-booking-content/hotels-booking-content.component';
import { HotelsCancelBookingContentComponent } from './../components/hotels-container/hotels-cancel-booking-content/hotels-cancel-booking-content.component';
import { HotelsGalleryContentComponent } from './../components/hotels-container/hotels-gallery-content/hotels-gallery-content.component';
import { HotelsGalleryPhotosContentComponent } from './../components/hotels-container/hotels-gallery-photos-content/hotels-gallery-photos-content.component';
import { HotelsGalleryVideosContentComponent } from './../components/hotels-container/hotels-gallery-videos-content/hotels-gallery-videos-content.component';
import { HotelsEditProfileContentComponent } from './../components/hotels-container/hotels-edit-profile-content/hotels-edit-profile-content.component';
import { HotelsMyProfileContentComponent } from './../components/hotels-container/hotels-my-profile-content/hotels-my-profile-content.component';
import { HotelsOpenBookingContentComponent } from './../components/hotels-container/hotels-open-booking-content/hotels-open-booking-content.component';
import { HotelsPageDashboardComponent } from './../components/hotels-container/hotels-page-dashboard/hotels-page-dashboard.component';
import { HotelsPageSliderContentComponent } from './../components/hotels-container/hotels-page-slider-content/hotels-page-slider-content.component';
import { HotelsPastBookingContentComponent } from './../components/hotels-container/hotels-past-booking-content/hotels-past-booking-content.component';
import { HotelsViewProfileContentComponent } from './../components/hotels-container/hotels-view-profile-content/hotels-view-profile-content.component';
import { HotelsPaymentDetailsComponent } from './../components/hotels-container/hotels-payment-details/hotels-payment-details.component';
import { HotelsBrowseMusiciansContentComponent } from './../components/hotels-container/hotels-browse-musicians-content/hotels-browse-musicians-content.component';
import { HotelsWalletContentComponent } from './../components/hotels-container/hotels-wallet-content/hotels-wallet-content.component';
import { HotelsWalletPaymentSettingContentComponent } from './../components/hotels-container/hotels-wallet-payment-setting-content/hotels-wallet-payment-setting-content.component';
import { HotelsWalletShowAvailableFundContentComponent } from './../components/hotels-container/hotels-wallet-show-available-fund-content/hotels-wallet-show-available-fund-content.component';
import { HotelsWalletWithdrawHistoryContentComponent } from './../components/hotels-container/hotels-wallet-withdraw-history-content/hotels-wallet-withdraw-history-content.component';
import { SharedModule } from './../components/shared/shared.module';
import {HotelsRoutingModule } from'./hotels-routing.module';
@NgModule({
    declarations: [
        HotelsPageContentComponent,
        HotelsContainerComponent,
        HotelsComponent,
        HotelsBookingContentComponent,
        HotelsCancelBookingContentComponent,
        HotelsGalleryContentComponent,
        HotelsGalleryPhotosContentComponent,
        HotelsGalleryVideosContentComponent,
        HotelsEditProfileContentComponent,
        HotelsMyProfileContentComponent,
        HotelsOpenBookingContentComponent,
        HotelsPageDashboardComponent,
        HotelsPageSliderContentComponent,
        HotelsPastBookingContentComponent,
        HotelsViewProfileContentComponent,
        HotelsPaymentDetailsComponent,
        HotelsBrowseMusiciansContentComponent,
        HotelsWalletContentComponent,
        HotelsWalletPaymentSettingContentComponent,
        HotelsWalletShowAvailableFundContentComponent,
        HotelsWalletWithdrawHistoryContentComponent,
    ],
    imports: [
        FormsModule,
        HttpModule,
        CommonModule,
        HotelsRoutingModule,
        SharedModule
    ],
    exports: [
        HotelsPageContentComponent,
        HotelsContainerComponent,
        HotelsComponent,
        HotelsBookingContentComponent,
        HotelsCancelBookingContentComponent,
        HotelsGalleryContentComponent,
        HotelsGalleryPhotosContentComponent,
        HotelsGalleryVideosContentComponent,
        HotelsEditProfileContentComponent,
        HotelsMyProfileContentComponent,
        HotelsOpenBookingContentComponent,
        HotelsPageDashboardComponent,
        HotelsPageSliderContentComponent,
        HotelsPastBookingContentComponent,
        HotelsViewProfileContentComponent,
        HotelsPaymentDetailsComponent,
        HotelsBrowseMusiciansContentComponent,
        HotelsWalletContentComponent,
        HotelsWalletPaymentSettingContentComponent,
        HotelsWalletShowAvailableFundContentComponent,
        HotelsWalletWithdrawHistoryContentComponent,
    ],
    providers: []
})
export class HotelsModule { }