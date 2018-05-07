import { Component, ViewChild, ElementRef, Input, Output, OnInit, EventEmitter, AfterViewInit } from '@angular/core';
import {debounceTime, distinctUntilChanged, tap} from 'rxjs/operators';
import {fromEvent} from 'rxjs/observable/fromEvent';
import * as jsPDF from 'jspdf'

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

	saveAsPDF (argument) {
		var table1 = 
        this.dataSource /*tableToJson($('#table1').get(0))*/,
        cellWidth = 35,
        cellContents,
        leftMargin = 2,
        topMargin = 12,
        topMarginTable = 55,
        headerRowHeight = 13,
        rowHeight = 9,

         l = {
         orientation: 'l',
         unit: 'mm',
         format: 'a3',
         compress: true,
         fontSize: 8,
         lineHeight: 1,
         autoSize: false,
         printHeaders: true
     };

    var doc = new jsPDF(l, '', '', '');

    doc.setProperties({
        title: 'Test PDF Document',
        subject: 'This is the subject',
        author: 'author',
        keywords: 'generated, javascript, web 2.0, ajax',
        creator: 'author'
    });

    doc.cellInitialize();
    
    this.config.displayColumns.forEach((data,i)=>{
	    doc.margins = 1;
        doc.setFont("helvetica");
        doc.setFontType("bold");
        doc.setFontSize(9);
        doc.cell(leftMargin, topMargin, cellWidth, headerRowHeight, (data.title || data.field), 0);
    })
    table1.forEach((row,i)=>{
	    this.config.displayColumns.forEach((data,j)=>{
	    	doc.margins = 1;
	        doc.setFont("courier ");
	        doc.setFontType("bolditalic ");
	        doc.setFontSize(6.5);                    
	        doc.cell(leftMargin, topMargin, cellWidth, rowHeight, row[data.field], i+1);  // 1st=left margin    2nd parameter=top margin,     3rd=row cell width      4th=Row height
	    })
    })

    doc.save('sample Report.pdf');

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