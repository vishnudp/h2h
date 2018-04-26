import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsCalendarContentComponent } from './artists-calendar-content.component';

describe('ArtistsCalendarContentComponent', () => {
  let component: ArtistsCalendarContentComponent;
  let fixture: ComponentFixture<ArtistsCalendarContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsCalendarContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsCalendarContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
