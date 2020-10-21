$(function() {

    var holder = $('#holder');
    var cardNumber = $('#cardNumber');
    var cardNumberField = $('#card-number-field');
    var CVV = $("#cvv");
    var mastercard = $("#mastercard");
    var confirmButton = $('#confirm-purchase');
    var visa = $("#visa");
    var amex = $("#amex");

    // Use the payform library to format and validate
    // the payment fields.

    cardNumber.payform('formatCardNumber');
    CVV.payform('formatCardCVC');


    cardNumber.keyup(function() {

        amex.removeClass('transparent');
        visa.removeClass('transparent');
        mastercard.removeClass('transparent');

        if ($.payform.validateCardNumber(cardNumber.val()) == false) {
            cardNumberField.addClass('has-error');
        } else {
            cardNumberField.removeClass('has-error');
            cardNumberField.addClass('has-success');
        }

        if ($.payform.parseCardType(cardNumber.val()) == 'visa') {
            mastercard.addClass('transparent');
            amex.addClass('transparent');
        } else if ($.payform.parseCardType(cardNumber.val()) == 'amex') {
            mastercard.addClass('transparent');
            visa.addClass('transparent');
        } else if ($.payform.parseCardType(cardNumber.val()) == 'mastercard') {
            amex.addClass('transparent');
            visa.addClass('transparent');
        }
    });

    confirmButton.click(function(e) {

        e.preventDefault();

        var isCardValid = $.payform.validateCardNumber(cardNumber.val());
        var isCvvValid = $.payform.validateCardCVC(CVV.val());

        if(holder.val().length < 5){
            alert("Incorrect Card Holder Name");
        } else if (!isCardValid) {
            alert("Incorrect Card Number");
        } else if (!isCvvValid) {
            alert("Incorrect CVV ");
        } else {
            // Everything is correct. Add your form submission code here.
            
        }
    });
    $(document).on('blur', CVV, function(e) {
	    if (CVV.val().length < 3) {
	        cgToggleError($(this), 'invalid');
	    }
	});	
});

var constraints = {
		  cardNumber: {
		    presence: true,
		    format: {
		      pattern: /^(34|37|4|5[1-5]).*$/,
		      message: function(value, attribute, validatorOptions, attributes, globalOptions) {
		        return validate.format("^%{num} is not a valid credit card number", {
		          num: value
		        });
		      }
		    },
		    length: function(value, attributes, attributeName, options, constraints) {
		      if (value) {
		        // Amex
		        if ((/^(34|37).*$/).test(value)) return {is: 15};
		        // Visa, Mastercard
		        if ((/^(4|5[1-5]).*$/).test(value)) return {is: 16};
		      }
		      // Unknown card, don't validate length
		      return false;
		    }
		  },
		  creditCardZip: function(value, attributes, attributeName, options, constraints) {
		    if (!(/^(34|37).*$/).test(attributes.cardNumber)) return null;
		    return {
		      presence: {message: "is required when using AMEX"},
		      length: {is: 5}
		    };
		  }
		};

		validate({cardNumber: "4"}, constraints);
		// => {"creditCardNumber": ["Credit card number is the wrong length (should be 16 characters)"]}

		validate({cardNumber: "9999999999999999"}, constraints);
		// => {"creditCardNumber": ["9999999999999999 is not a valid credit card number"]}

		validate({cardNumber: "4242424242424242"}, constraints);
		// => undefined

		validate({cardNumber: "340000000000000"}, constraints);
		// => {"creditCardZip": ["Credit card zip is required when using AMEX"]}
		
