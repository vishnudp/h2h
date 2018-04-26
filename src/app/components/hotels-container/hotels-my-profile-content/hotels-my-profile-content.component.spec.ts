import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsMyProfileContentComponent } from './hotels-my-profile-content.component';

describe('HotelsMyProfileContentComponent', () => {
  let component: HotelsMyProfileContentComponent;
  let fixture: ComponentFixture<HotelsMyProfileContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsMyProfileContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsMyProfileContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
