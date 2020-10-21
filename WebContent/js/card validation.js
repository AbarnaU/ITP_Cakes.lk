function validate(){
	var holder = document.forms["online"]["holder"].value;
	var cvv = document.forms["online"]["cvv"].value;
	var cardNumber = document.forms["online"]["cardNumber"].value;
	var expirationdate = document.forms["online"]["expiration-date"].value;
	
	if(is_holder(holder))
    	if(is_cvv(cvv))
			if(is_cardNumber(price))
				if(is_expirationdate(expiration-date))
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
    if(elemValue ==""  || elemValue == null){
        alert("You cannot have " + field + "  empty");
        return true;
    }
    else
        return false;
}		
function is_cid(elemValue){
    if(!isEmpty(elemValue, "Holder Name"))
            return true; 
    else
        return false;
}

function is_qty(elemValue){
	 if(!isEmpty(elemValue, "CVV"))
        return true; 
else
    return false;
}

function is_price(elemValue){
	 if(!isEmpty(elemValue, "Card Number"))
         return true; 
 else
     return false;
}

function is_description(elemValue){
    if(!isEmpty(elemValue, "Expire Date"))
            return true; 
    else
        return false;
}
		