import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { ArtistsComponent } from './../artists/artists.component';
import { ArtistsContainerComponent } from './../components/artists-container/artists-container.component';
import { ArtistsPageContentComponent } from './../components/artists-container/artists-page-content/artists-page-content.component';
import { ArtistsMyProfileContentComponent } from './../components/artists-container/artists-my-profile-content/artists-my-profile-content.component';
import { ArtistsEditProfileContentComponent } from './../components/artists-container/artists-edit-profile-content/artists-edit-profile-content.component';

import { ArtistsCatalogueContentComponent } from './../components/artists-container/artists-catalogue-content/artists-catalogue-content.component';

import { ArtistsSkillsContentComponent } from './../components/artists-container/artists-skills-content/artists-skills-content.component';

import { ArtistsBookingContentComponent } from './../components/artists-container/artists-booking-content/artists-booking-content.component';
import { ArtistsOpenBookingContentComponent } from './../components/artists-container/artists-open-booking-content/artists-open-booking-content.component';
import { ArtistsPastBookingContentComponent } from './../components/artists-container/artists-past-booking-content/artists-past-booking-content.component';
import { ArtistsCancelBookingContentComponent } from './../components/artists-container/artists-cancel-booking-content/artists-cancel-booking-content.component';
import { ArtistsWalletContentComponent } from './../components/artists-container/artists-wallet-content/artists-wallet-content.component';
import { ArtistsWalletShowAvailableFundContentComponent } from './../components/artists-container/artists-wallet-show-available-fund-content/artists-wallet-show-available-fund-content.component';
import { ArtistsWalletWithdrawHistoryContentComponent } from './../components/artists-container/artists-wallet-withdraw-history-content/artists-wallet-withdraw-history-content.component';
import { ArtistsWalletPaymentSettingsContentComponent } from './../components/artists-container/artists-wallet-payment-settings-content/artists-wallet-payment-settings-content.component';
import { ArtistsPageDashboardComponent } from './../components/artists-container/artists-page-dashboard/artists-page-dashboard.component';
import { SharedModule } from './../components/shared/shared.module';
import { ArtistsRoutingModule } from'./artists-routing.module';
@NgModule({
  declarations: [
    ArtistsComponent,
    ArtistsContainerComponent,
    ArtistsPageContentComponent,
    ArtistsMyProfileContentComponent,
    ArtistsEditProfileContentComponent,
    ArtistsCatalogueContentComponent,
    ArtistsSkillsContentComponent,
    ArtistsBookingContentComponent,
    ArtistsOpenBookingContentComponent,
    ArtistsPastBookingContentComponent,
    ArtistsCancelBookingContentComponent,
    ArtistsWalletContentComponent,
    ArtistsWalletShowAvailableFundContentComponent,
    ArtistsWalletWithdrawHistoryContentComponent,
    ArtistsWalletPaymentSettingsContentComponent,
    ArtistsPageDashboardComponent
  ],
  imports: [
    FormsModule,
    HttpModule,
    CommonModule,
    SharedModule,
    ArtistsRoutingModule
  ],
  exports: [
    ArtistsContainerComponent,
    ArtistsPageContentComponent,
    ArtistsMyProfileContentComponent,
    ArtistsEditProfileContentComponent,
    ArtistsCatalogueContentComponent,
    /*ArtistsSkillsContentComponent,*/
    ArtistsBookingContentComponent,
    ArtistsOpenBookingContentComponent,
    ArtistsPastBookingContentComponent,
    ArtistsCancelBookingContentComponent,
    ArtistsWalletContentComponent,
    ArtistsWalletShowAvailableFundContentComponent,
    ArtistsWalletWithdrawHistoryContentComponent,
    ArtistsWalletPaymentSettingsContentComponent,
    ArtistsPageDashboardComponent
  ],
  providers: []
})
export class ArtistsModule { }