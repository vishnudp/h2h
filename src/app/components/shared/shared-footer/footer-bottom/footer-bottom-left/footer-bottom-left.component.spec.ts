import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FooterBottomLeftComponent } from './footer-bottom-left.component';

describe('FooterBottomLeftComponent', () => {
  let component: FooterBottomLeftComponent;
  let fixture: ComponentFixture<FooterBottomLeftComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FooterBottomLeftComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FooterBottomLeftComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
