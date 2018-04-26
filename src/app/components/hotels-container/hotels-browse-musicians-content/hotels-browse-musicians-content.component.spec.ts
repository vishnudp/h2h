import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsBrowseMusiciansContentComponent } from './hotels-browse-musicians-content.component';

describe('HotelsBrowseMusiciansContentComponent', () => {
  let component: HotelsBrowseMusiciansContentComponent;
  let fixture: ComponentFixture<HotelsBrowseMusiciansContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsBrowseMusiciansContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsBrowseMusiciansContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
