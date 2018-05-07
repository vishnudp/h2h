// Running Clock
function date_time(id)
{
        date = new Date;
        year = date.getFullYear();
        month = date.getMonth();
        months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
        d = date.getDate();
        day = date.getDay();
        days = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
        h = date.getHours();
		
		if(d<10)
        {
            d = "0"+d;
        }
		
        if(h<10)
        {
            h = "0"+h;
        }
		
		// Code for AM/PM
		var suffix = "AM";
		if (h >= 12)
		{
		  suffix = "PM";
		  //h = h - 12;
		}
  
        m = date.getMinutes();
        if(m<10)
        {
                m = "0"+m;
        }
        s = date.getSeconds();
        if(s<10)
        {
                s = "0"+s;
        }
        result = ''+days[day]+' '+months[month]+' '+d+', '+year+' '+h+':'+m+':'+s+' '+ suffix ;
        document.getElementById(id).innerHTML = result;
        setTimeout('date_time("'+id+'");','1000');
        return true;
}
