import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsPageSliderContentComponent } from './artists-page-slider-content.component';

describe('ArtistsPageSliderContentComponent', () => {
  let component: ArtistsPageSliderContentComponent;
  let fixture: ComponentFixture<ArtistsPageSliderContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsPageSliderContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsPageSliderContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
