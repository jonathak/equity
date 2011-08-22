// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  jQuery("#transaction_company").change(function(){ 
    jQuery.ajax({
      async:true,
      url: $(this).data("url"),
      data: {company_id: jQuery(this).val() },
      type:'GET',
      dataType:"script",
      success: function(data){},
      error:function(request){ alert('Error') }
    });
  });
});

$(document).ready(function() {
  jQuery("#security_kind").change(function(){ 
	
	// c_debt
    if ($(this).val() == '3'){
	  $('.field_liq').slideDown();
	  $('.field_debt').slideDown();
	  $('.field_cov').slideDown();
	  $('.field_pref').slideUp();
	}
	
	// preferred
	if ($(this).val() == '4'){
	  $('.field_liq').slideDown();
	  $('.field_pref').slideDown();
	  $('.field_cov').slideDown();
	  $('.field_debt').slideUpt();
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
