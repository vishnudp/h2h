import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsPastBookingContentComponent } from './hotels-past-booking-content.component';

describe('HotelsPastBookingContentComponent', () => {
  let component: HotelsPastBookingContentComponent;
  let fixture: ComponentFixture<HotelsPastBookingContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsPastBookingContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsPastBookingContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
