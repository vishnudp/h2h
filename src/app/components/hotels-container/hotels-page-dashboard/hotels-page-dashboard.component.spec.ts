import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsPageDashboardComponent } from './hotels-page-dashboard.component';

describe('HotelsPageDashboardComponent', () => {
  let component: HotelsPageDashboardComponent;
  let fixture: ComponentFixture<HotelsPageDashboardComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsPageDashboardComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsPageDashboardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
