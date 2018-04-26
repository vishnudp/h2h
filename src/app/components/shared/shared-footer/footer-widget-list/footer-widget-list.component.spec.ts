import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FooterWidgetListComponent } from './footer-widget-list.component';

describe('FooterWidgetListComponent', () => {
  let component: FooterWidgetListComponent;
  let fixture: ComponentFixture<FooterWidgetListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FooterWidgetListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FooterWidgetListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
