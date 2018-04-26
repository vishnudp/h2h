import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FooterWidgetListItemComponent } from './footer-widget-list-item.component';

describe('FooterWidgetListItemComponent', () => {
  let component: FooterWidgetListItemComponent;
  let fixture: ComponentFixture<FooterWidgetListItemComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FooterWidgetListItemComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FooterWidgetListItemComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
