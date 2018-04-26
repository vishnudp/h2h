import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsWalletPaymentSettingContentComponent } from './hotels-wallet-payment-setting-content.component';

describe('HotelsWalletPaymentSettingContentComponent', () => {
  let component: HotelsWalletPaymentSettingContentComponent;
  let fixture: ComponentFixture<HotelsWalletPaymentSettingContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsWalletPaymentSettingContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsWalletPaymentSettingContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
