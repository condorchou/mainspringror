function coefVideo(){
  return "<div id='cofe_years'>\
        <div id='cofe_title'>CofE Videos</div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2011)'>2011</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2010)'>2010</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2009)'>2009</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2008)'>2008</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2007)'>2007</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2006)'>2006</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2005)'>2005</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2004)'>2004</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2003)'>2003</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2002)'>2002</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2001)'>2001</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(2000)'>2000</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(1999)'>1999</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(1998)'>1998</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(1997)'>1997</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(1996)'>1996</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(1995)'>1995</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(1994)'>1994</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(1993)'>1993</a></div>\
        <div class='datelink'><a href='#' onclick='$.mainspring.renderCustom(1992)'>1992</a></div>\
      </div>";
}

$.mainspring.renderCustom = function(data){
  var aStr = coefVideo();
  $("#grid").append(aStr);
  $.mainspring.getTileInfo(data);
};

$.mainspring.renderTabs = function(data){
  var st = Number($.cookie('mstab'));

  var video = [ {t:'ConnectedTV',l:'Connected TV',cb:'getTileInfo'},
                {t:'CofE Videos',l:'CofE',cb:'renderCustom'},
                {t:'Partnership Videos',l:'Partnership',cb:'getTileInfo'},
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
