import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsWalletPaymentSettingsContentComponent } from './artists-wallet-payment-settings-content.component';

describe('ArtistsWalletPaymentSettingsContentComponent', () => {
  let component: ArtistsWalletPaymentSettingsContentComponent;
  let fixture: ComponentFixture<ArtistsWalletPaymentSettingsContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsWalletPaymentSettingsContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsWalletPaymentSettingsContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
