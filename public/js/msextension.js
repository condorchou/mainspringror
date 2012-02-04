//$.mainspring.renderTabThree = function(data){
$.mainspring.renderTiles2 = function(data){
	alert("HELLO WORLD");
};

$.mainspring.renderTabs = function(data){
	var video = [	{t:'ConnectedTV',l:'connectv',cb:'$.mainspring.renderTiles'},
								{t:'CofE Videos',l:'coef videos',cb:'$.mainspring.renderTiles'},
								{t:'Partnership Videos',l:'partnership',cb:'$.mainspring.renderTiles2'},
								{t:'Marketing',l:'marketing',cb:'$.mainspring.renderTiles'}];

		$.get("tmpl/tabContainer.tmpl.html", function(tabContainer){
			$.get("tmpl/tab.tmpl.html", function(tabTmpl){
				//$.tmpl(tabTmpl,video).appendTo("#tab_container");
				$.tmpl(tabContainer).appendTo("#tab_container");
				$.tmpl(tabTmpl,video).appendTo("#tab_top");
				$('#nav_div').tabs();
				$('#nav_div').tabs('select', data); // switch to third tab
				$('#nav_div').bind('tabsselect', function(event, ui) {
						 // Objects available in the function context:
						//alert(ui.tab);     // anchor element of the selected (clicked) tab
						//alert(ui.panel);   // element, that contains the selected/clicked tab contents
						$("#grid div").remove();
						$.cookie({"tab": ui.index});
						switch(ui.index){   // zero-based index of the selected (clicked) tab
							case 0:
								$.mainspring.getTileInfo('$.mainspring.renderTile', 'connecttv');
								break;
							case 1:
								$.mainspring.getTileInfo('$.mainspring.renderTile', 'cofe videos');
								break;
							case 2:
								$.mainspring.getTileInfo('$.mainspring.renderTile2', 'partnership videos');
								break;
							case 3:
								$.mainspring.getTileInfo('$.mainspring.renderTile', 'marketing');
								break;
							default:
								$.mainspring.getTileInfo('$.mainspring.renderTile', '');
								break;
						}
				});
			});
		});

};

/*
$(function(){
	$("#navigation_grid").find.("#grid").load(function(){
		$.mainspring.renderTabThree();
	});
*/
/*
	$("#navigation_grid").find('#grid').load(function(){
		alert($("#grid").html());
		$.mainspring.renderTabThree();
	});
*/
/*
			url = $.mainspring.decodeRemoteURI("videos.json");
      $.ajax({url: url, dataType:'jsonp', jsonpCallback: "$.mainspring.renderTiles"})
});
*/
