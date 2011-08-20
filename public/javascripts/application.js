// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  jQuery("#security_kind").change(function(){ 
	
    if ($(this).val() == 'c_debt'){
	  $('.field_liq').fadeIn();
	  $('.field_debt').fadeIn();
	  $('.field_cov').fadeIn();
	  $('.field_pref').fadeOut();
	}
	
	if ($(this).val() == 'preferred'){
	  $('.field_liq').fadeIn();
	  $('.field_pref').fadeIn();
	  $('.field_cov').fadeIn();
	  $('.field_debt').fadeOut();
	}	
	
	if (($(this).val() == 'common') || ($(this).val() == 'options')){
	  $('.field_liq').fadeOut();
	  $('.field_pref').fadeOut();
	  $('.field_cov').fadeOut();
	  $('.field_debt').fadeOut();
	}

  });
});