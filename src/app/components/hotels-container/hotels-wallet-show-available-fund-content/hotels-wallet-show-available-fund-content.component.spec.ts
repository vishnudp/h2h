import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsWalletShowAvailableFundContentComponent } from './hotels-wallet-show-available-fund-content.component';

describe('HotelsWalletShowAvailableFundContentComponent', () => {
  let component: HotelsWalletShowAvailableFundContentComponent;
  let fixture: ComponentFixture<HotelsWalletShowAvailableFundContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsWalletShowAvailableFundContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsWalletShowAvailableFundContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
