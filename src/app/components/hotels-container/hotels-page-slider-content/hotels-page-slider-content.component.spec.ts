import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsPageSliderContentComponent } from './hotels-page-slider-content.component';

describe('HotelsPageSliderContentComponent', () => {
  let component: HotelsPageSliderContentComponent;
  let fixture: ComponentFixture<HotelsPageSliderContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsPageSliderContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsPageSliderContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
