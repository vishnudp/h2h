import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsWalletWithdrawHistoryContentComponent } from './hotels-wallet-withdraw-history-content.component';

describe('HotelsWalletWithdrawHistoryContentComponent', () => {
  let component: HotelsWalletWithdrawHistoryContentComponent;
  let fixture: ComponentFixture<HotelsWalletWithdrawHistoryContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsWalletWithdrawHistoryContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsWalletWithdrawHistoryContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
