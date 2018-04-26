import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeSponsorsContainerComponent } from './home-sponsors-container.component';

describe('HomeSponsorsContainerComponent', () => {
  let component: HomeSponsorsContainerComponent;
  let fixture: ComponentFixture<HomeSponsorsContainerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HomeSponsorsContainerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HomeSponsorsContainerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
