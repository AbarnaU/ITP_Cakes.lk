function validate(){
	
	 var cid = document.forms["add-cake"][ "cid"].value;
	 var cname = document.forms["add-cake"][ "cname"].value;
	 var qty = document.forms["add-cake"][ "qty"].value;
	 var price = document.forms["add-cake"][ "price"].value;
	 var description = document.forms["add-cake"][ "description"].value;


	if(is_cid(cid))
	    if(isAlphebatic(cname))
	    	if(is_qty(qty))
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


function is_cid(elemValue){
    if(!isEmpty(elemValue, "Cake ID"))
            return true; 
    else
        return false;
}

function isAlphebatic(elemValue){
    var exp = /^[a-zA-Z]+$/;
    if(!isEmpty(elemValue, "Cake Name"))
    {
        if(elemValue.match(exp))
        {
            return true;
        }
        else
        {
            alert("Enter only text for cake Name");
            return false;
        }
    }
    else
        return false;
}

function is_qty(elemValue){
	 if(!isEmpty(elemValue, "Quantity"))
        return true; 
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