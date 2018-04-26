import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsOpenBookingContentComponent } from './artists-open-booking-content.component';

describe('ArtistsOpenBookingContentComponent', () => {
  let component: ArtistsOpenBookingContentComponent;
  let fixture: ComponentFixture<ArtistsOpenBookingContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsOpenBookingContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsOpenBookingContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
