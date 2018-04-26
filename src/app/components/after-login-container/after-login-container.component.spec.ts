import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AfterLoginContainerComponent } from './after-login-container.component';

describe('AfterLoginContainerComponent', () => {
  let component: AfterLoginContainerComponent;
  let fixture: ComponentFixture<AfterLoginContainerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AfterLoginContainerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AfterLoginContainerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
