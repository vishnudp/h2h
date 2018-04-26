import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsCatalogueVideosContentComponent } from './artists-catalogue-videos-content.component';

describe('ArtistsCatalogueVideosContentComponent', () => {
  let component: ArtistsCatalogueVideosContentComponent;
  let fixture: ComponentFixture<ArtistsCatalogueVideosContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsCatalogueVideosContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsCatalogueVideosContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
