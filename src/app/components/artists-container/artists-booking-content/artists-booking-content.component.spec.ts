import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsBookingContentComponent } from './artists-booking-content.component';

describe('ArtistsBookingContentComponent', () => {
  let component: ArtistsBookingContentComponent;
  let fixture: ComponentFixture<ArtistsBookingContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsBookingContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsBookingContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
