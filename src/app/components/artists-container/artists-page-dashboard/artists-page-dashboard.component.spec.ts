import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsPageDashboardComponent } from './artists-page-dashboard.component';

describe('ArtistsPageDashboardComponent', () => {
  let component: ArtistsPageDashboardComponent;
  let fixture: ComponentFixture<ArtistsPageDashboardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsPageDashboardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsPageDashboardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
