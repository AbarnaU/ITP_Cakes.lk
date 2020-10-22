function validation(){
	
	 
	 var fname = document.forms["delivery"][ "fname"].value;
	 var address = document.forms["delivery"][ "address"].value; 
	 var city = document.forms["delivery"][ "city"].value;
	 var pnumber = document.forms["delivery"][ "pnumber"].value;
	 
	
	 
	     if (fname == null || fname == "") {
	         alert("Full name cannot be empty..!!");
	         return false;
	     }
	     else if(address == null || address == ""){
	    	 alert("Address cannot be empty..!!");
	         return false;
	     }
	     
	     else if(city == null ||city == ""){
	    	 alert("City cannot be empty..!!");
	         return false;
	     }
	     
	     else if(pnumber == null || pnumber== ""){
	    	 alert("Phone number cannot be empty..!!");
	         return false;
	     }
}
	    
