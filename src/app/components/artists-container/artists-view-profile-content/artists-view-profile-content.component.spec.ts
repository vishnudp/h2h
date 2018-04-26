import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsViewProfileContentComponent } from './artists-view-profile-content.component';

describe('ArtistsViewProfileContentComponent', () => {
  let component: ArtistsViewProfileContentComponent;
  let fixture: ComponentFixture<ArtistsViewProfileContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsViewProfileContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsViewProfileContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
