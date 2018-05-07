import { Component, ViewChild, ElementRef, Input, Output, OnInit, EventEmitter, AfterViewInit } from '@angular/core';
import {debounceTime, distinctUntilChanged, tap} from 'rxjs/operators';
import {fromEvent} from 'rxjs/observable/fromEvent';
declare var jsPDF: any; // Important

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

	saveAsPDF() {
		this.config.displayColumns.map((o: any)=>{o.dataKey = o.field})
		var doc = new jsPDF('l');
		doc.setProperties({
	        title: 'Test PDF Document',
	        subject: 'This is the subject',
	        author: 'author',
	        keywords: 'generated, javascript, web 2.0, ajax',
	        creator: 'author'
	    });
		var totalPagesExp = "{total_pages_count_string}";

	    var pageContent = function (data) {
	        // HEADER
	        doc.setFontSize(20);
	        doc.setTextColor(40);
	        doc.setFontStyle('normal');
	        doc.text("Report", data.settings.margin.left, 22);

	        // FOOTER
	        var str = "Page " + data.pageCount + " of " + totalPagesExp;
	        doc.setFontSize(10);
	        doc.text(str, data.settings.margin.left, doc.internal.pageSize.height - 10);
	    };

    	doc.autoTable(this.config.displayColumns, this.dataSource, {
	        //startY: doc.autoTable.previous.finalY + 15,
	        theme: "grid",
	        margin: {horizontal: 7, top : 30},
	        bodyStyles: {valign: 'middle'},
        	styles: {overflow: 'linebreak', columnWidth: 'wrap'},
	        // drawHeaderRow: function (row, data) {
	        //    row.height = 10;
	        // },
	        addPageContent: pageContent,
	        columnStyles: {
	        	client_details: {
	                columnWidth: '107'
	            },
	        	//text: {columnWidth: 'wrap'}
	        }
	    });
	    doc.putTotalPages(totalPagesExp);

		doc.save('table.pdf');
	}
}