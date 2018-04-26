import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ArtistsSkillsContentComponent } from './artists-skills-content.component';

describe('ArtistsSkillsContentComponent', () => {
  let component: ArtistsSkillsContentComponent;
  let fixture: ComponentFixture<ArtistsSkillsContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ArtistsSkillsContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ArtistsSkillsContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
