import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsWalletContentComponent } from './hotels-wallet-content.component';

describe('HotelsWalletContentComponent', () => {
  let component: HotelsWalletContentComponent;
  let fixture: ComponentFixture<HotelsWalletContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsWalletContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsWalletContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
