import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsViewProfilePublicComponent } from './artists-view-profile-public.component';

describe('ArtistsViewProfilePublicComponent', () => {
  let component: ArtistsViewProfilePublicComponent;
  let fixture: ComponentFixture<ArtistsViewProfilePublicComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsViewProfilePublicComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsViewProfilePublicComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
