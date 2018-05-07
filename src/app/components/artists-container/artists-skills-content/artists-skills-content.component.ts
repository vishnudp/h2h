import { Component, Inject, OnInit } from '@angular/core';
import { APP_CONFIG } from '../../../app.config';
import { IAppConfig } from '../../../app.config.shared';
import {
  CommonRequestResponseService
} from '../../../services/common-services';
@Component({
  selector: 'app-artists-skills-content',
  templateUrl: './artists-skills-content.component.html',
  styleUrls: ['./artists-skills-content.component.css']
})
export class ArtistsSkillsContentComponent implements OnInit {
  skillTitle;
  skillDescription;
  skillsData = [];
  selectedSkillId = 0;
  skillApiStatus = '';
  loadContentStatus = false;
  currentDeletingSkillId;
  constructor(@Inject(APP_CONFIG) private config: IAppConfig,private _commonRequestResponseService: CommonRequestResponseService) { }

  ngOnInit() {
    this.getSkills();
  }

  getSkills() {
    this._commonRequestResponseService.post('artist-skill.php?action=get_skill', {})
      .subscribe((res) => {
        console.log('api response--', res);
        if (res && res.length > 0) {
          this.skillsData = res;
          this.loadContentStatus = true;
        } else {
          this.skillsData = [];
          this.loadContentStatus = true;
        }
      }, (err) => {
        this.loadContentStatus = false;
        console.log('got Error', err);
      });
  }

  saveSkill(artistSkillForm) {
    console.log(this.prepareSaveSkill(artistSkillForm));
    const validInputJson = this.prepareSaveSkill(artistSkillForm);
    let url;
    console.log('validInputJson--', validInputJson);
    if (artistSkillForm.valid) {
      if (this.selectedSkillId > 0) {
        url = 'artist-skill.php?action=update_skill';
        validInputJson['skill_id'] = this.selectedSkillId;
      } else {
        url = 'artist-skill.php?action=addSkill';
      }
      this._commonRequestResponseService.post(url, validInputJson)
      .subscribe((res) => {
        if (res) {
          console.log('photosData--', res);
          if (this.selectedSkillId > 0) {
            this.skillApiStatus = 'update';
          } else {
            this.skillApiStatus = 'save';
          }
          
          this.getSkills();
          this.resetForm(artistSkillForm);
        }
          // this.countryData = res;
          // console.log('this.countryData--', this.countryData);
      }, (err) => {
        this.skillApiStatus = 'error';
        console.log('got Error', err);
      });
    }
  }

  editSkill(index) {
    this.selectedSkillId = this.skillsData[index]['skill_id'];
    this.skillTitle = this.skillsData[index]['skill_title'];
    this.skillDescription = this.skillsData[index]['skill_description'];
  }

  showDeletionConfirmationPopup(id) {
    this.currentDeletingSkillId = id;
  }
  deleteSkill(artistSkillForm) {
    const inputJson = { skill_id : this.currentDeletingSkillId};
    this._commonRequestResponseService.post('artist-skill.php?action=delete_skill', inputJson)
      .subscribe((res) => {
        console.log('api response--', res);
        if (res) {
          this.skillApiStatus = 'delete';
          this.getSkills();
          this.resetForm(artistSkillForm);
        }
      }, (err) => {
        console.log('got Error', err);
      });
  }

  prepareSaveSkill(artistSkillForm) {
    if (artistSkillForm.valid) {
      this.skillApiStatus = '';
      const inputJson = {
        user_id : 1,
        user_role_id : 1,
        skill_title : this.skillTitle,
        skill_description : this.skillDescription
      };
      return inputJson;
    } else {
      this.skillApiStatus = 'validationError';
    }
  }

  resetForm(artistSkillForm) {
    this.selectedSkillId = 0;
    artistSkillForm.reset();
  }

}
