import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { WithoutLoginContainerComponent } from './without-login-container.component';

describe('WithoutLoginContainerComponent', () => {
  let component: WithoutLoginContainerComponent;
  let fixture: ComponentFixture<WithoutLoginContainerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ WithoutLoginContainerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(WithoutLoginContainerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
