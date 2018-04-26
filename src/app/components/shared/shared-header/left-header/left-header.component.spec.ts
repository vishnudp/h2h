import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LeftHeaderComponent } from './left-header.component';

describe('LeftHeaderComponent', () => {
  let component: LeftHeaderComponent;
  let fixture: ComponentFixture<LeftHeaderComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LeftHeaderComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LeftHeaderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
