import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsMyProfileContentComponent } from './artists-my-profile-content.component';

describe('ArtistsMyProfileContentComponent', () => {
  let component: ArtistsMyProfileContentComponent;
  let fixture: ComponentFixture<ArtistsMyProfileContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsMyProfileContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsMyProfileContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
