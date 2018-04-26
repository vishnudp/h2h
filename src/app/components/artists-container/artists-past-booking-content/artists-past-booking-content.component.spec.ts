import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsPastBookingContentComponent } from './artists-past-booking-content.component';

describe('ArtistsPastBookingContentComponent', () => {
  let component: ArtistsPastBookingContentComponent;
  let fixture: ComponentFixture<ArtistsPastBookingContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsPastBookingContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsPastBookingContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
