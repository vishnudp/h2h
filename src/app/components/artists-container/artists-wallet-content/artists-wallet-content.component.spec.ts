import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsWalletContentComponent } from './artists-wallet-content.component';

describe('ArtistsWalletContentComponent', () => {
  let component: ArtistsWalletContentComponent;
  let fixture: ComponentFixture<ArtistsWalletContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsWalletContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsWalletContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
