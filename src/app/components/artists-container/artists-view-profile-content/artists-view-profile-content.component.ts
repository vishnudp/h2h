import { Component, OnInit } from '@angular/core';
import { 
  CommonAuthenticationService, CommonDataSharedService, CommonRequestResponseService
} from '../../../services/common-services';
@Component({
  selector: 'app-artists-view-profile-content',
  templateUrl: './artists-view-profile-content.component.html',
  styleUrls: ['./artists-view-profile-content.component.css']
})
export class ArtistsViewProfileContentComponent implements OnInit {

  constructor(public _commonAuthenticationService: CommonAuthenticationService,
    public _commonDataSharedService: CommonDataSharedService,
    public _commonRequestResponseService: CommonRequestResponseService) { }
  showForm = false;
  skillsData = [];
  eventData = [];
  loadSkillStatus = false;
  loadEventStatus = false;
  ngOnInit() {
    this.getSkills();
    this.getEvents();
  }

  getSkills() {
    this._commonRequestResponseService.post('artist-skill.php?action=get_skill', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.skillsData = res;
          this.loadSkillStatus = true;
        } else {
          this.skillsData = [];
          this.loadSkillStatus = true;
        }
      }, (err) => {
        this.loadSkillStatus = false;
        console.log('got Error', err);
      });
  }

  getEvents() {
    this._commonRequestResponseService.post('artist-event.php?action=get_event', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.eventData = res;
          this.loadEventStatus = true;
        } else {
          this.eventData = [];
          this.loadEventStatus = true;
        }
      }, (err) => {
        this.loadEventStatus = false;
        console.log('got Error', err);
      });
  }

}
