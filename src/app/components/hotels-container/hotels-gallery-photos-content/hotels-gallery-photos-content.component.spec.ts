import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsGalleryPhotosContentComponent } from './hotels-gallery-photos-content.component';

describe('HotelsGalleryPhotosContentComponent', () => {
  let component: HotelsGalleryPhotosContentComponent;
  let fixture: ComponentFixture<HotelsGalleryPhotosContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsGalleryPhotosContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsGalleryPhotosContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
