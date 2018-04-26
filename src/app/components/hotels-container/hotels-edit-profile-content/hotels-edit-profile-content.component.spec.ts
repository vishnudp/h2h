import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsEditProfileContentComponent } from './hotels-edit-profile-content.component';

describe('HotelsEditProfileContentComponent', () => {
  let component: HotelsEditProfileContentComponent;
  let fixture: ComponentFixture<HotelsEditProfileContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsEditProfileContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsEditProfileContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
