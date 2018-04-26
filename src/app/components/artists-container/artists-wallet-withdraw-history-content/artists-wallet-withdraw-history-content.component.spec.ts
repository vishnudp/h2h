import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsWalletWithdrawHistoryContentComponent } from './artists-wallet-withdraw-history-content.component';

describe('ArtistsWalletWithdrawHistoryContentComponent', () => {
  let component: ArtistsWalletWithdrawHistoryContentComponent;
  let fixture: ComponentFixture<ArtistsWalletWithdrawHistoryContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsWalletWithdrawHistoryContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsWalletWithdrawHistoryContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
