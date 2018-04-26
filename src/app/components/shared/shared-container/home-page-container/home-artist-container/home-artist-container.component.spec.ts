import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeArtistContainerComponent } from './home-artist-container.component';

describe('HomeArtistContainerComponent', () => {
  let component: HomeArtistContainerComponent;
  let fixture: ComponentFixture<HomeArtistContainerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HomeArtistContainerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HomeArtistContainerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
