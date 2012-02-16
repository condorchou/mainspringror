function commentsTmpl(){ return '<ul class="comments"><li><span class="user">${comment.username}</span><span class="date">${$.mainspring.formatDate(comment.created_at)}</span><div class="clear">&nbsp;</div>${comment.body}<div class="comments_divide"></div></li></ul>'; }

function tabContainerTmpl(){ return '<div id="nav_div"><ul id="tab_top"></ul></div>'; }

function tabTmpl(){ return '<li><a href="body">${t}</a></li>'; }

function tilesTmpl(){ return '<div class="video_tile_wrapper"><div style="margin: 0pt; padding: 0pt; text-align: left;"><div class="video_tile_inner"><a target="_top" href="?goto=videos/${id}"><img src="http://content.bitsontherun.com/thumbs/${botr_video_key}-320.jpg" alt="${title}"></a></div></div><p><a target="_top" href="intranet.php?goto=videos/${id}">${title}</a></p><p></p></div>'; }

function searchTmpl(){ return '<div id="searchContainer"><div id="searchNav"><div id="search_box"><div id="search_box_container" align="right"><div id="search_box_contact_us"><a href="${contact_us}" target="_top">contact us</a></div><div id="search_form"><form id="search_form" method="post"><input class="searchbox_off" id="search_box" name="search_terms" type="text" value="" /><input class="search_button" id="submit_button" name="commit" type="button" value="" onclick="$.mainspring.performSearch();return false;"/></form><script> jQuery(document).ready(function($){	$("input#search_box").blur(function(){ if (this.value == null || this.value=="" || this.value==undefined) { this.className="searchbox_off"; } }); $("input#search_box").focus(function(){ this.className="searchbox_on"; $("input#search_box").keypress(function(e){ if(e.which == 13){ jQuery("#submit_button").focus().click(); return false; } }); }); }); </script> </div> </div> </div> <div style="font-size: 15px; margin: 0 0 28px 0;"> <span style="color: gray;">VIDEOS WITH SEARCH TERMS:</span>${terms} </div> </div> <div class="clearboth"></div> <div class="video_list" style="width: 100%;"> <table style="width: 100%;" id="searchListContainer"> <tr><td><span id="noresults">No Search Results</span></td></tr> </table> </div> <div class="back_to_homepage"> <a href="${backUrl}" target="_top">&lt; BACK TO HOMEPAGE</a> </div> </div>'; }

function searchEntryTmpl(){ return '<tr> <td colspan="2"> <div class="gray_hr"></div> </td> </tr> <tr> <td class="thumbTd"> <div class="thumb"> <a target="_top" href="?goto=videos/${video.id}"><img src="http://content.bitsontherun.com/thumbs/${video.botr_video_key}-320.jpg" alt="${video.title}" style="width: 120px;"></a> </div> </td> <td class="titleTd"> <p><a target="_top" href="?goto=videos/${video.id}">${video.title}</a></p> ${videoDescription} <div style="color: rgb(152, 152, 152);"> RELATED TAGS: {{each video.label}} <a href="#" onclick="$.mainspring.performSearch(\'${$value}\'); return false;">${$value}</a>, {{/each}} </div> </td> </tr>'; }

function templateTmpl(){ return ' <div id="ms_wrapper"> <div style="float:left;width:640px;margin-left:1px;margin-top:0px;"> <div id="left_container"> <div id="video_embed_container"> </div> <div class="space15"><img alt="" src="http://www.mainspringror.com/images/spacer.gif" /></div> </div> <div id="video_rate">		<div id="rating_stats"> <strong>${num_comments}</strong>&nbsp;comments&nbsp; <span>|</span> <strong>${views}</strong>&nbsp;views&nbsp; <span>|</span> <strong>${likes_count}</strong>&nbsp;<nobr>thumbs up</nobr>&nbsp; </div> <div id="social_buttons"> <span id="ilikethis">	{{html thumbs_up_link}} </span> &nbsp; <a href="mailto:  ?subject=Connect TV: ${org_name}  Wellness&body=Test O\' Riley thought you might be interested in this Connect TV episode: ${org_name}  Wellness ${url}"> <img alt="Share this video" src="http://www.mainspringror.com/images/share_link.gif" /> </a> </div> <div class="clearboth"></div> </div> <span id="participants"> This Connected TV episode is brought to you by:&nbsp; <span>${participants} - ${location}</span> </span> <div class="clearboth eighty"></div> <div id="tab_container"></div> <div id="navigation_grid" style="background-color:#FFF;"> <div id="loader"><img src="http://www.mainspringror.com/images/loading.gif" alt="loading..."/></div> <div id="grid"></div> </div> </div> <div id="feature_description"> <div id="search_box"> <div id="search_box_container" align="right"> <div id="search_box_contact_us"> <a href="${contact_us}" target="_top">contact us</a> </div> <div id="search_form_div"> <form id="search_form" method="post"> <input class="searchbox_off" id="search_box" name="search_terms" type="text" value="" /> <input class="search_button" id="submit_button" name="commit" type="button" value="" onclick="$.mainspring.performSearch();return false;"/> </form> <script> jQuery(document).ready(function($){	$("input#search_box").blur(function(){ if (this.value == null || this.value=="" || this.value==undefined) { this.className="searchbox_off"; } }); $("input#search_box").focus(function(){ this.className="searchbox_on"; }); $("input#search_box").keypress(function(e){ if(e.which == 13){ jQuery(this).blur(); jQuery("#submit_button").focus().click(); return false; } }); }); </script> </div> </div> </div> <div style="position:absolute;top:17px;left:220px;color:#7f7f7f;width:450px;height:13px;font-size:8.5pt;display:none;">&nbsp;</div> <div id="clipContext"> <p id="location_title">${title}</p> <p id="clip_date">${location}&nbsp; ${release_date}</p> <span id="long_description"> ${description} </span> <br /> <div style="float:left;width:450px;overflow:hidden;"> <b>Related Links:</b>&nbsp; </div> <br style="float:clear;"> <b>Tags:</b>&nbsp;{{each label}} <a href="#" onclick="$.mainspring.performSearch(\'${$value}\'); return false;">${$value}</a>, {{/each}} <div class="space10">&nbsp;</div>	</div> <div style="float:left;width:280px;"> <div id="comments_div"> <form id="comment_form"> <div id="comments_label">Add a new comment</div> <textarea class="comments_text_area" id="body" name="body"></textarea><div id="comments_submit_button"><input name="commit" type="button" value="submit comment" /></div> <div class="comments_name_location">${name}, ${location}</div> <div class="clear">&nbsp;</div>	<div class="space10">&nbsp;</div>	</form> <!-- end form for submit comment --> <div class="space5">&nbsp;</div>	<div id="comments"></div> </div> </div> </div> </div>'; }

function videoTmpl(){return '<iframe src="http://content.bitsontherun.com/players/${botr_video_key}-J69KF0q1.html" width="640" height="360" frameborder="0" scrolling="auto"></iframe>';}

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

  var video = [ {t:'All Videos',l:'',cb:'getTileInfo'},
								{t:'ConnectedTV',l:'Connected TV',cb:'getTileInfo'},
                {t:'CofE Videos',l:'CofE',cb:'renderCustom'},
                {t:'Partnerships',l:'Partnership',cb:'getTileInfo'},
                {t:'Marketing',l:'Marketing',cb:'getTileInfo'}];

			$.tmpl($.mainspring.tabContainerTmpl).appendTo("#tab_container");
			$.tmpl(tabTmpl,video).appendTo("#tab_top");//.tabs().tabs('select', st);
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
};
