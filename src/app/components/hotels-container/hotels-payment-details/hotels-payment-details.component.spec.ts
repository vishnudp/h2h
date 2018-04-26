import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsPaymentDetailsComponent } from './hotels-payment-details.component';

describe('HotelsPaymentDetailsComponent', () => {
  let component: HotelsPaymentDetailsComponent;
  let fixture: ComponentFixture<HotelsPaymentDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsPaymentDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsPaymentDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
