import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LoginWithSocialMediaComponent } from './login-with-social-media.component';

describe('LoginWithSocialMediaComponent', () => {
  let component: LoginWithSocialMediaComponent;
  let fixture: ComponentFixture<LoginWithSocialMediaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LoginWithSocialMediaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LoginWithSocialMediaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
