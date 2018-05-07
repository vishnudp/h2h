import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-artists-open-booking-content',
  templateUrl: './artists-open-booking-content.component.html',
  styleUrls: ['./artists-open-booking-content.component.css']
})
export class ArtistsOpenBookingContentComponent implements OnInit {
  bookingListConfig = {
  	title : "It will list all the future & availabel bookings of an artist.",
  	filterable : true,
  	options : {
  		excel : true,
  		download : true,
  		print : true,
  		fullScreen : true
  	},
  	displayColumns : [{
  		field : "booking_date",
  		title : "Booking date",
  		width : '11%'
  	},{
  		field : "booking_title",
  		title : "Booking title"
  	},{
  		field : "client_details",
  		title : "Client details"
  	},{
  		field : "payment_status",
  		title : "Payment status"
  	}],
  	actions : true,
  	dataSource : this.createFakeData(100)
  }

  createFakeData(n) {
  	var arr = [];
  	for(var i=0;i<n;i++) {
  		arr.push({
	  		booking_date : i%31 + '/' + (i+15)%13 + '/' + 2000+((i+8)%21),
	  		booking_title : "000"+i,
			client_details : 'LIC Corporation of India',
			payment_status : 'Advance'
		})
  	}
  	return arr;
  }

  onInitializedBookingList(event) {
  	console.log("onInitializedBookingList",event);
  }
  
  constructor() { }

  ngOnInit() {
  }

}
