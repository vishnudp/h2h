import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsPageContentComponent } from './artists-page-content.component';

describe('ArtistsPageContentComponent', () => {
  let component: ArtistsPageContentComponent;
  let fixture: ComponentFixture<ArtistsPageContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsPageContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsPageContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
