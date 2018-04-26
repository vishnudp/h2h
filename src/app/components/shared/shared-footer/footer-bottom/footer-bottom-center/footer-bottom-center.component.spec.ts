import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FooterBottomCenterComponent } from './footer-bottom-center.component';

describe('FooterBottomCenterComponent', () => {
  let component: FooterBottomCenterComponent;
  let fixture: ComponentFixture<FooterBottomCenterComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FooterBottomCenterComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FooterBottomCenterComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
