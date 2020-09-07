function validate(){
	
	 var pid = document.forms["add-package"][ "pid"].value;
	 var pname = document.forms["add-package"][ "pname"].value;
	 var price = document.forms["add-package"][ "price"].value;
	 var description = document.forms["add-package"][ "description"].value;
	   



	if(is_pid(pid))
	    if(isAlphebatic(pname))
	    	if(is_price(price))
	    		if(is_description(description))
			        return true;
				    else
				        return false;
					else
				        return false;
					else
						return false;
					else
						return false;
	
}

function isEmpty(elemValue,field){
    if(elemValue==""  || elemValue == null){
        alert("You cannot have " + field + " field empty");
        return true;
    }
    else
        return false;
}


function is_pid(elemValue){
    if(!isEmpty(elemValue, "Package ID"))
            return true; 
    else
        return false;
}

function isAlphebatic(elemValue){
    var exp = /^[a-zA-Z]+$/;
    if(!isEmpty(elemValue, "Package Name"))
    {
        if(elemValue.match(exp))
        {
            return true;
        }
        else
        {
            alert("Enter only text for you Package Name");
            return false;
        }
    }
    else
        return false;
}

function is_price(elemValue){
	 if(!isEmpty(elemValue, "Price"))
         return true; 
 else
     return false;
}

function is_description(elemValue){
    if(!isEmpty(elemValue, "Description"))
            return true; 
    else
        return false;
}