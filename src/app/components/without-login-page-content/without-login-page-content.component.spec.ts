import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { WithoutLoginPageContentComponent } from './without-login-page-content.component';

describe('WithoutLoginPageContentComponent', () => {
  let component: WithoutLoginPageContentComponent;
  let fixture: ComponentFixture<WithoutLoginPageContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ WithoutLoginPageContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(WithoutLoginPageContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
