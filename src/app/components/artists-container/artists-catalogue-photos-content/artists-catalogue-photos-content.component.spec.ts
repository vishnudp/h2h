import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsCataloguePhotosContentComponent } from './artists-catalogue-photos-content.component';

describe('ArtistsCataloguePhotosContentComponent', () => {
  let component: ArtistsCataloguePhotosContentComponent;
  let fixture: ComponentFixture<ArtistsCataloguePhotosContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsCataloguePhotosContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsCataloguePhotosContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
