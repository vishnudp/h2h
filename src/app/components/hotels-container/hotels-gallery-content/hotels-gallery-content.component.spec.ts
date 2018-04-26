import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsGalleryContentComponent } from './hotels-gallery-content.component';

describe('HotelsGalleryContentComponent', () => {
  let component: HotelsGalleryContentComponent;
  let fixture: ComponentFixture<HotelsGalleryContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsGalleryContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsGalleryContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
