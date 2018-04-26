import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsViewProfileContentComponent } from './hotels-view-profile-content.component';

describe('HotelsViewProfileContentComponent', () => {
  let component: HotelsViewProfileContentComponent;
  let fixture: ComponentFixture<HotelsViewProfileContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsViewProfileContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsViewProfileContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
