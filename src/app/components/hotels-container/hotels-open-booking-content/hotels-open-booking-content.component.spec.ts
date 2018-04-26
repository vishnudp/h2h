import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsOpenBookingContentComponent } from './hotels-open-booking-content.component';

describe('HotelsOpenBookingContentComponent', () => {
  let component: HotelsOpenBookingContentComponent;
  let fixture: ComponentFixture<HotelsOpenBookingContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsOpenBookingContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsOpenBookingContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
