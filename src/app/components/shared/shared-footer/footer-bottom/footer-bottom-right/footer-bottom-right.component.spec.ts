import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FooterBottomRightComponent } from './footer-bottom-right.component';

describe('FooterBottomRightComponent', () => {
  let component: FooterBottomRightComponent;
  let fixture: ComponentFixture<FooterBottomRightComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FooterBottomRightComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FooterBottomRightComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
