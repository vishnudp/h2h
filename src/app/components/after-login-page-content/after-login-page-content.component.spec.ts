import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AfterLoginPageContentComponent } from './after-login-page-content.component';

describe('AfterLoginPageContentComponent', () => {
  let component: AfterLoginPageContentComponent;
  let fixture: ComponentFixture<AfterLoginPageContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AfterLoginPageContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AfterLoginPageContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
