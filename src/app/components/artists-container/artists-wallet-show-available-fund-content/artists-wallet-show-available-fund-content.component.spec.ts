import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsWalletShowAvailableFundContentComponent } from './artists-wallet-show-available-fund-content.component';

describe('ArtistsWalletShowAvailableFundContentComponent', () => {
  let component: ArtistsWalletShowAvailableFundContentComponent;
  let fixture: ComponentFixture<ArtistsWalletShowAvailableFundContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsWalletShowAvailableFundContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsWalletShowAvailableFundContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
