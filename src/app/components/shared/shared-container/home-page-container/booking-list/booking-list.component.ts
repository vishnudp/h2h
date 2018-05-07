import { Component, ViewChild, ElementRef, Input, Output, OnInit, EventEmitter, AfterViewInit } from '@angular/core';
import {debounceTime, distinctUntilChanged, tap} from 'rxjs/operators';
import {fromEvent} from 'rxjs/observable/fromEvent';

@Component({
	selector : 'app-booking-list',
	templateUrl : './booking-list.component.html'
})


export class BookingListComponent implements OnInit, AfterViewInit {
  	@ViewChild('searchInput') searchInput : ElementRef;
	
	@Input() config;
	@Output() initialized = new EventEmitter();;
	dataSource :any[] = [];
	pageSize : string = "10";
	totalPage : number = 1;
	currentPage : number = 1;
	len : number = 0;
	pageArr = [];
	tempDs = [];
	constructor() {
	}

	ngOnInit() {
		this.len = (this.config.dataSource && this.config.dataSource.length) || 0;
		this.totalPage = Math.ceil(this.len/+this.pageSize) || 1;
		this.pageArr = Array(this.totalPage);
		let offset = (this.currentPage-1)*(+this.pageSize);
		this.dataSource = this.config.dataSource.slice(offset, offset+(+this.pageSize));
	    this.initialized.next({eventName : 'initialized'});
	}

	changeFilter(event) {
		if (event === 'onPageSizeChange') {
			this.currentPage = 1;
			this.totalPage = Math.ceil(this.len/+this.pageSize) || 1;
			this.pageArr = Array(this.totalPage);
		}
		let offset = (this.currentPage-1)*(+this.pageSize);
		if(this.config.filterable && this.searchInput.nativeElement.value && this.searchInput.nativeElement.value.trim())
			this.dataSource = this.tempDs.slice(offset, offset+(+this.pageSize));
		else
			this.dataSource = this.config.dataSource.slice(offset, offset+(+this.pageSize));
	}

	ngAfterViewInit() {
		this.config.filterable && fromEvent(this.searchInput.nativeElement,'input')
            .pipe(
                debounceTime(500),
                distinctUntilChanged(),
                tap(() => {
                    let s = this.searchInput.nativeElement.value.trim().toLowerCase();
                    if(s) {
	                    this.tempDs = this.config.dataSource.filter((obj)=>{
	            			return this._find(obj,s);        	
	                    })
	                    this.len = this.tempDs.length;
                    } else
                    	this.len = this.config.dataSource.length;
				    this.changeFilter('onPageSizeChange');
                })
            )
            .subscribe();
	}

	_find(obj,s) {
		for(let data of this.config.displayColumns) {
    		var temp = obj[data.field];
			if (temp.toString().toLowerCase().includes(s))
				return true;
    	}
    	return false;
	}

	// saveData = (function () {
	//     var a : any = document.createElement("a");
	//     document.body.appendChild(a);
	//     a.style = "display: none";
	//     return function (data, fileName) {
	//         var json = JSON.stringify(data),
	//             blob = new Blob([json], {type: "octet/stream"}),
	//             url = window.URL.createObjectURL(blob);
	//         a.href = url;
	//         a.download = fileName;
	//         a.click();
	//         window.URL.revokeObjectURL(url);
	//     };
	// }());


}