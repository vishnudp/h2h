import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistCategoryListComponent } from './artist-category-list.component';

describe('ArtistCategoryListComponent', () => {
  let component: ArtistCategoryListComponent;
  let fixture: ComponentFixture<ArtistCategoryListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistCategoryListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistCategoryListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
