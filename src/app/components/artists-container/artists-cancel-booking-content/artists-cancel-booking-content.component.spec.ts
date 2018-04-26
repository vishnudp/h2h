import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsCancelBookingContentComponent } from './artists-cancel-booking-content.component';

describe('ArtistsCancelBookingContentComponent', () => {
  let component: ArtistsCancelBookingContentComponent;
  let fixture: ComponentFixture<ArtistsCancelBookingContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsCancelBookingContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsCancelBookingContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
