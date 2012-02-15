function coefVideo(){
  return "<div id='cofe_years'>\
        <div id='cofe_title'>CofE Videos</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2011))'>2011</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2010))'>2010</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2009))'>2009</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2008))'>2008</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2007))'>2007</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2006))'>2006</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2005))'>2005</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2004))'>2004</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2003))'>2003</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2002))'>2002</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2001))'>2001</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(2000))'>2000</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(1999))'>1999</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(1998))'>1998</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(1997))'>1997</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(1996))'>1996</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(1995))'>1995</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(1994))'>1994</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(1993))'>1993</div>\
        <div class='datelink' onclick='$.mainspring.renderCustom(String(1992))'>1992</div>\
      </div>";
}

$.mainspring.renderCustom = function(data){
  var aStr = coefVideo();

  $("#cofe_years").remove();
  $("#grid").append(aStr);
  $.mainspring.getTileInfo(data);
};

$.mainspring.renderTabs = function(data){
  var st = Number($.cookie('mstab'));

  var video = [ 
{t:'All Videos',l:'',cb:'getTileInfo'},
{t:'ConnectedTV',l:'Connected TV',cb:'getTileInfo'},
                {t:'CofE Videos',l:'CofE',cb:'renderCustom'},
                {t:'Partnerships',l:'Partnership',cb:'getTileInfo'},
                {t:'Marketing',l:'Marketing',cb:'getTileInfo'}];

    $.get("tmpl/tabContainer.tmpl.html", function(tabContainer){
      $.get("tmpl/tab.tmpl.html", function(tabTmpl){
        $.tmpl(tabContainer).appendTo("#tab_container");
        $.tmpl(tabTmpl,video).appendTo("#tab_top");
        $('#nav_div').tabs();
        $('#nav_div').tabs('select', st); // switch to third tab
        //Execute the appropirate routine
        $.mainspring[video[st].cb](video[st].l);
        //select and set the appripriate tab
        $('#nav_div').bind('tabsselect', function(event, ui) {
            $("#grid div").remove();
            $.cookie("mstab", ui.index);
            st = ui.index;
            $.mainspring[video[st].cb](video[st].l);
        }); 

      }); 
    }); 

};
