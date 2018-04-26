import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistCategoryComponent } from './artist-category.component';

describe('ArtistCategoryComponent', () => {
  let component: ArtistCategoryComponent;
  let fixture: ComponentFixture<ArtistCategoryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistCategoryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistCategoryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
