import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsCancelBookingContentComponent } from './hotels-cancel-booking-content.component';

describe('HotelsCancelBookingContentComponent', () => {
  let component: HotelsCancelBookingContentComponent;
  let fixture: ComponentFixture<HotelsCancelBookingContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsCancelBookingContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsCancelBookingContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
