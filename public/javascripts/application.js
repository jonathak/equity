// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  jQuery("#security_kind").change(function(){ 
	
	// c_debt
    if ($(this).val() == '3'){
	  $('.field_liq').fadeIn();
	  $('.field_debt').fadeIn();
	  $('.field_cov').fadeIn();
	  $('.field_pref').fadeOut();
	}
	
	// preferred
	if ($(this).val() == '4'){
	  $('.field_liq').fadeIn();
	  $('.field_pref').fadeIn();
	  $('.field_cov').fadeIn();
	  $('.field_debt').fadeOut();
	}	
	
	// common || options
	if (($(this).val() == '1') || ($(this).val() == '2')){
	  $('.field_liq').fadeOut();
	  $('.field_pref').fadeOut();
	  $('.field_cov').fadeOut();
	  $('.field_debt').fadeOut();
	}

  });
});