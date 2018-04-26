import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsBookingContentComponent } from './hotels-booking-content.component';

describe('HotelsBookingContentComponent', () => {
  let component: HotelsBookingContentComponent;
  let fixture: ComponentFixture<HotelsBookingContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsBookingContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsBookingContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
