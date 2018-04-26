import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsCatalogueContentComponent } from './artists-catalogue-content.component';

describe('ArtistsCatalogueContentComponent', () => {
  let component: ArtistsCatalogueContentComponent;
  let fixture: ComponentFixture<ArtistsCatalogueContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsCatalogueContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsCatalogueContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
