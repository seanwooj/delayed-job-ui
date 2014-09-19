//= require jquery
//= require jquery.dataTables

window.delayed_job_ui = (function($){
  var dj_obj = {};
  var namespace = ("#delayed-job-ui");


  dj_obj.initialize = function(){
    dj_obj.$parent = $(namespace);
    instantiate_datatable();
    tab_handlers();
    hide_tab_content();
    show_active_tab();
  }

  var instantiate_datatable = function(){
    dj_obj.$parent.find('.job_table').DataTable();
  }

  var tab_handlers = function() {
    dj_obj.$parent.on('click', '.tab-title a', function(e){
      $tab_link = $(e.target);
      set_active_tab($tab_link)
    })
  }

  var set_active_tab = function($tab_link) {
    var content_id = $tab_link.attr('href');
    var old_content_id = dj_obj.$parent.find(".tab-title.active a").attr('href');
    dj_obj.$parent.find(".tab-title.active").removeClass('active');
    $tab_link.parent().addClass('active');
    dj_obj.$parent.find(content_id).show();
    dj_obj.$parent.find(old_content_id).hide();
  }

  var hide_tab_content = function(){
    dj_obj.$parent.find(".tab-content").hide();
  }

  var show_active_tab = function(){
    var content_id = dj_obj.$parent.find(".tab-title.active a").attr('href');
    dj_obj.$parent.find(content_id).show();
  }

  return dj_obj
})(jQuery);

$(window.delayed_job_ui.initialize);