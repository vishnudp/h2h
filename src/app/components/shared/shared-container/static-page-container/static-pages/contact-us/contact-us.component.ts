import { Component, OnInit } from '@angular/core';
import {FormBuilder,FormGroup,FormControl,Validators,NgForm} from '@angular/forms'  
import {
  CommonRequestResponseService
} from '../../../../../../services/common-services';
@Component({
  selector: 'app-contact-us',
  templateUrl: './contact-us.component.html',
  styleUrls: ['./contact-us.component.css']
})
export class ContactUsComponent implements OnInit {

  	contacUsForm:FormGroup;
  	loading : boolean = false;
  	contactUsApiStatus : string = '';

	constructor(private frmbuilder:FormBuilder,private _commonRequestResponseService: CommonRequestResponseService) {  
	    this.contacUsForm=frmbuilder.group({  
		    contact_name:new FormControl('',[Validators.required,Validators.minLength(3), Validators.maxLength(40)]),  
		    contact_email:new FormControl('',[Validators.required, Validators.email]),  
		    contact_mbl_number:new FormControl('',[Validators.minLength(10),Validators.maxLength(15), Validators.pattern('[0-9]+')]),  
		    contact_city:new FormControl('',[Validators.required, Validators.minLength(3),Validators.maxLength(20)]),  
		    contact_comment:new FormControl('',Validators.maxLength(140))  
	    });  
	}  

  ngOnInit() {
  }

  PostData() {
  	this.loading = true;  
    this._commonRequestResponseService.post('guest_contact_info.php?action=add_guest_contact_info', this.contacUsForm.value)
      .subscribe((res) => {
      	this.contacUsForm.reset();
        this.loading = false;
        this.contactUsApiStatus = 'success';
      }, (err) => {
        this.loading = false;
        this.contactUsApiStatus = 'error';
      });
  }  

}
