import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TestimonialContainerComponent } from './testimonial-container.component';

describe('TestimonialContainerComponent', () => {
  let component: TestimonialContainerComponent;
  let fixture: ComponentFixture<TestimonialContainerComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TestimonialContainerComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TestimonialContainerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
