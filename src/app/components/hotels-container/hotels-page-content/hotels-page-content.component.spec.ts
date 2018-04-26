import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HotelsPageContentComponent } from './hotels-page-content.component';

describe('HotelsPageContentComponent', () => {
  let component: HotelsPageContentComponent;
  let fixture: ComponentFixture<HotelsPageContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HotelsPageContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HotelsPageContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
