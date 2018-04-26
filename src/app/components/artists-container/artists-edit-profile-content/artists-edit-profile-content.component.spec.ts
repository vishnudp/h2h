import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsEditProfileContentComponent } from './artists-edit-profile-content.component';

describe('ArtistsEditProfileContentComponent', () => {
  let component: ArtistsEditProfileContentComponent;
  let fixture: ComponentFixture<ArtistsEditProfileContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsEditProfileContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsEditProfileContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
