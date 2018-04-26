import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsGalleryVideosContentComponent } from './hotels-gallery-videos-content.component';

describe('HotelsGalleryVideosContentComponent', () => {
  let component: HotelsGalleryVideosContentComponent;
  let fixture: ComponentFixture<HotelsGalleryVideosContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsGalleryVideosContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsGalleryVideosContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
