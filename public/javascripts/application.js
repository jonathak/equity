// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//this is used in entities#liquidity
$(document).ready(function() {
  $('#liq_chart').popupWindow({ 
    centerBrowser:1,
    windowURL:'/entities/liquidity_chart'
  });
});

//this is used in entities#percentage
$(document).ready(function() {
  $('#percentage_chart').popupWindow({ 
    centerBrowser:1,
    windowURL:'/entities/percentage_chart'
  });
});

// this is used in investment#new
$(document).ready(function() {
  jQuery("#investment_login_e").click(function(){ 
    jQuery.ajax('inv_log_e');
  });
});

// this is used in investment#new
$(document).ready(function() {
  jQuery("#investment_sign_up_e").click(function(){ 
    jQuery.ajax('inv_sign_e');
  });
});

// this is used in investment#new
$(document).ready(function() {
  jQuery("#investment_login_c").click(function(){ 
    jQuery.ajax('inv_log_c');
  });
});

// this is used in investment#new
$(document).ready(function() {
  jQuery("#investment_sign_up_c").click(function(){ 
    jQuery.ajax('inv_sign_c');
  });
});

// this is used in investment#new
$(document).ready(function() {
  jQuery("#investment_cont").click(function(){ 
    jQuery.ajax('cont', {
	  data: {
		email: jQuery('.inv_log_field #email').val(),
		password: jQuery('.inv_log_field #login').val()
      }
	});
  });
});

// this is used in investment#new
$(document).ready(function() {
  jQuery("#inv_comp_select select").click(function(){ 
    jQuery.ajax('inv_submit_e', {
	  data: {
		company_id: jQuery(this).val()
	  }
	});
  });
});

// this is used in investment#new
$(document).ready(function() {
  jQuery("#inv_comp_select select").change(function(){ 
    jQuery.ajax('inv_submit_e', {
	  data: {
		company_id: jQuery(this).val()
	  }
	});
  });
});

// this is used in investment#new
$(document).ready(function() {
  jQuery("#inv_comp_select_c select").change(function(){ 
    jQuery.ajax('inv_comp_c', {
	  data: {
		company_id: jQuery(this).val()
	  }
	});
  });
});

// this is used in investment#new
$(document).ready(function() {
  jQuery("#inv_comp_text input").focusout(function(){ 
    jQuery.ajax('inv_comp_text', {
	  data: {
		company_name: jQuery(this).val()
	  }
	});
  });
});

// this is used in investment#new
$(document).ready(function() {
  jQuery("#inv_ent_select select").change(function(){ 
    jQuery.ajax('inv_submit_c', {
	  data: {
		entity_id: jQuery(this).val()
	  }
	});
  });
});

// this is used in companies index
$(document).ready(function() {
  	jQuery(".company_expand").click(function(){
	  $(".company_list_hidden").slideUp();
	  $(".company_indirects_hidden").slideUp();
	  $($(this).data('id')).slideDown();
	});
});

// this is used in companies index
$(document).ready(function() {
  	jQuery(".show_indirects").click(function(){
	  $($(this).data('id')).slideDown();
	});
});

// this is used in transaction#new
$(document).ready(function() {
  jQuery("#transaction_security_id").click(function(){ 
    jQuery.ajax({
      async:true,
      url: $(this).data("url"),
      data: {security_id: jQuery(this).val() },
      type:'GET',
      dataType:"script",
      success: function(data){},
      error:function(request){ alert('Error') }
    });
  });
});

// this is used in transaction#new
$(document).ready(function() {
  jQuery("#transaction_security_id").change(function(){ 
    jQuery.ajax({
      async:true,
      url: $(this).data("url"),
      data: {security_id: jQuery(this).val() },
      type:'GET',
      dataType:"script",
      success: function(data){},
      error:function(request){ alert('Error') }
    });
  });
});

// this is used in transaction#new
$(document).ready(function() {
  jQuery("#transaction_seller_id").click(function(){ 
    jQuery.ajax({
      async:true,
      url: $(this).data("url"),
      data: {seller_id: jQuery(this).val() },
      type:'GET',
      dataType:"script",
      success: function(data){},
      error:function(request){ alert('Error') }
    });
  });
});

// this is used in transaction#new
$(document).ready(function() {
  jQuery("#transaction_seller_id").change(function(){ 
    jQuery.ajax({
      async:true,
      url: $(this).data("url"),
      data: {seller_id: jQuery(this).val() },
      type:'GET',
      dataType:"script",
      success: function(data){},
      error:function(request){ alert('Error') }
    });
  });
});

// this is used in security#new
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
	  $('.field_debt').slideUp();
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
