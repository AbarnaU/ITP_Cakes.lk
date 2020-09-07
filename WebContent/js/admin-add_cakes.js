function validate(){
	
	 var eid = document.forms["add-guide"][ "eid"].value;
	 var ename = document.forms["add-guide"][ "ename"].value;
	 var phone = document.forms["add-guide"][ "phone"].value;
	 var salary = document.forms["add-guide"][ "salary"].value;
	 var address = document.forms["add-guide"][ "address"].value;



	if(is_eid(eid))
	    if(isAlphebatic(ename))
	    	if(is_phone(phone))
	    		if(is_salary(salary))
	    			if(is_address(address))
	    				return true;
				    else
				    	return false;
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


function is_eid(elemValue){
    if(!isEmpty(elemValue, "Tour Guide ID"))
            return true; 
    else
        return false;
}

function isAlphebatic(elemValue){
    var exp = /^[a-zA-Z]+$/;
    if(!isEmpty(elemValue, "Tour Guide Name"))
    {
        if(elemValue.match(exp))
        {
            return true;
        }
        else
        {
            alert("Enter only text for you Tour Guide Name");
            return false;
        }
    }
    else
        return false;
}

function is_phone(elemValue){
	 if(!isEmpty(elemValue, "Phone"))
         return true; 
 else
     return false;
}

function is_salary(elemValue){
    if(!isEmpty(elemValue, "Salary"))
            return true; 
    else
        return false;
}

function is_address(elemValue){
	 if(!isEmpty(elemValue, "Address"))
        return true; 
else
    return false;
}