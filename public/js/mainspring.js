//
//create closure
//
(function($){
  

  $.fn.mainspring = function(options){
       //options override defaults
       $.mainspring.opts = $.extend({}, $.mainspring.defaults, options);       
       //if localStorage is empty
                     
       //this jQuery object
       $.mainspring.opts.element = this;
       
       //inject other dependencies

       //$.ajax({url: $.mainspring.getClientServiceURL()+'/behavior.js', cache:true, dataType:'script'});
       //$.ajax({url: 'javascripts/prototype.js', cache:true, dataType:'script'});
       //$.ajax({url: 'javascripts/controls.js', cache:true, dataType:'script'});
       //$.ajax({url: 'javascripts/jquery.cookie.js', cache:true, dataType:'script'});
			 
       $('head').append('<link rel="stylesheet" href="css/style.css" type="text/css"/>');

       //TODO: only need to do this once, so store user id in cookie
       if (true) {
         $.ajax({url: $.mainspring.createUserJsonpURL(), cache:true, dataType:'jsonp', jsonpCallback:'jQuery.mainspring.setUserCookie' });
       }

       //fetch remote page with jsonp ajax call with authentication and call a callback method
       $.mainspring.fetchRemoteURI($.mainspring.opts.remoteURI);

   


   //    $.getJSON($.mainspring.createUserJsonpURL()+"&callback=?", 
   //       function(data) {
   //          $.mainspring.opts.user_id = data.user_id;
   //          $.mainspring.fetchRemoteURI($.mainspring.opts.remoteURI);
   //       });
           //   $("head").append("<scr"+"ipt src='"+$.mainspring.createUserJsonpURL()+"'></scr"+"ipt>"); 

                         
       return this;

  }; //end fn.mainspring function


    //overridable static functions 
  $.mainspring = {
    
    //default settings
    defaults : {
        environment: "development",
        clientHandle: "belsobeer",
        name: "Joy McDee",
        location: "Los Angeles, CA",
        clientUserID: "joy@belsobeer.com",
        width: 800,
        height: 800,
        remoteURI : "videos",
        user_id : ""
    },
    
    //options
    opts: {},
    fetchRemoteURI: function(remoteURI) {
      var url = $.mainspring.decodeRemoteURI(remoteURI) + ".json?auth_token="+$.mainspring.opts.clientHandle +
         '_' + $.mainspring.opts.clientUserID;
      $.ajax({url: url, dataType:'jsonp', jsonpCallback: "$.mainspring.renderPage"})
			
			
			url = $.mainspring.decodeRemoteURI("videos.json");
      $.ajax({url: url, dataType:'jsonp', jsonpCallback: "$.mainspring.renderTiles"})
			
			
			
			

    },
    setUserCookie: function(data) {
    //alert("set the returned user id into the cookie so we don't need to make this call again");
    },
		getTile: function(data){
			//$("#nav_div").empty();
			$.mainspring.renderTabs(data);
			//attr( "tabbednav" , "  ) 
		},
		selectTile: function(data){

		},
		updateTiles: function(data){

		},
		renderTabs: function(data){
			//alert(data);
			$.cookie({"tab": data});
			//var video = {t1:1,t2:2,t3:3,t4:4};

			$.get("tmpl/tabButtons.tmpl.html", function(template){
				//alert(template);
				$.tmpl(template).appendTo("#nav_div");
				$('#nav_div').tabs();
			});
		/*
		$('#nav_div').bind('tabsselect', function(event, ui) {
				 // Objects available in the function context:
				alert(ui.tab);     // anchor element of the selected (clicked) tab
				alert(ui.panel);   // element, that contains the selected/clicked tab contents
				alert(ui.index);   // zero-based index of the selected (clicked) tab
		});
		*/
		//$( "#nav_div" ).tabs();
/*
		 var $tabs = $("#nav_div").tabs();
		 $tabs.tabs('select', data); // switch to third tab
*/


		},
		renderTiles: function(data){
      //console.log(data);
			var tiles = new Array();
			//alert(data.length);
			for(i = 0; i < data.length; i++){
				tiles[i] = data[i].video;
				tiles[i].botr_video_key = "EVwCtgxd";
			}

			$.get("tmpl/tiles.tmpl.html", function(template){	
				$.tmpl(template, tiles).appendTo("#grid");
			});

			//$("#nav_div").tabs();
			//$("#connect_tv_container").tabs();
			
		},

    submitComment: function(data) {
		/*
			alert("submitComment() called "+$("#comment_form").serialize());
			var url = '/clients/'+this.opts.clientHandle+'/videos/'+data.id+'/';
			alert(url);
			$.post(url, function(ret) {
				alert(ret);
			});
			*/
		},
    renderPage: function(data) {
			//alert(data);
      //console.log(data);
			var videoInfo = {
					environment: "development",
					clientHandle: "belsobeer",
					name: "Joy McDee",
					location: "Los Angeles, CA",
					date: "11/12/2001",
					clientUserID: "joy@belsobeer.com",
					remoteURI : "videos",
					user_id : ""
			};
			
			var video = data[0].video;
			var comments = video.comments;
	
			//data[0].video.num_comments = comments.length;
			data[0].video.thumbs_ups = 50;
			//data[0].video.views = 500;
			data[0].video.location = "Boise, ID";
			var tmp = data[0].video.release_date.split("T");
			data[0].video.release_date = tmp[0];
			data[0].video.shortSummary = "Here is a short summary";
			data[0].video.userid = $.mainspring.opts.clientUserID;
			data[0].video.video_player = "script type=text/javascript src=http://content.bitsontherun.com/players/EVwCtgxd-kasi1DWo.js>";

			var tags = [
				{ tag_url: "http://atagurl1", tag_name: "tag 1"},
				{ tag_url: "http://atagurl2", tag_name: "tag 2"},
				{ tag_url: "http://atagurl3", tag_name: "tag 3"}
			];
			
			var searchUrl = [{search_url: "http://google.com"}];

			
			$.get('tmpl/template.html', function(template){
				$.tmpl(template, data[0].video).appendTo("#connect_tv_container");
				//$('#nav_div').tabs();
			});
			//alert(data[0].video.tab_highlight);
			
			//$.mainspring.renderTabs(data[0].video.tab_highlight);
			$.get("tmpl/comments.html", function(template){
				$.tmpl(template, comments).appendTo("#comments");
			});
			$.get("tmpl/search.html", function(template){	
				$.tmpl(template, searchUrl).appendTo("#search_box");
			});
			$.get("tmpl/tags.html", function(template){	
				$.tmpl(template, tags).appendTo("#videotags");
			});
			$.get("tmpl/video.tmpl.html", function(template){	
				$.tmpl(template, data[0].video).appendTo("#video_embed_container");
			});
			$("#comment_form").bind("submit", function() { 
				$.mainspring.submitComment(data[0].video);
				return false; 
			});
			
			//console.log(data);
			//console.log(this);
    },
  
    encodeName: function() {
      return encodeURI($.mainspring.opts.name);
    },
    encodeClientUserID: function() {
      return encodeURI($.mainspring.opts.clientUserID);
    },
    encodeLocation: function() {
      return encodeURI($.mainspring.opts.location);
    },
    createUserJsonpURL: function() {
      return $.mainspring.getHost() + '/authenticate.json?client_handle='+$.mainspring.opts.clientHandle+
      '&username='+$.mainspring.encodeName()+'&user_id='+$.mainspring.encodeClientUserID()+
      '&location='+$.mainspring.encodeLocation();
    },
    getHost: function() {
      var url = "http://127.0.0.1:8080";
      if ($.mainspring.opts.environment == 'staging') {
         url = "http://staging.mainspringror.com";
      } else if ($.mainspring.opts.environment == 'production') {
         url = "https://production.mainspringror.com";
      }
      return url;
    },
    getClientServiceURL: function() {
        url = $.mainspring.getHost()+"/clients/"+$.mainspring.opts.clientHandle;
        return url;
    },
    decodeRemoteURI: function(remoteURI) {
      var temp_array = [$.mainspring.getClientServiceURL()];
      var src = decodeURIComponent(remoteURI);
      if (src == "" || src == undefined || src == null) {
         temp_array.push("videos");
      } else {
         temp_array.push(src);
      }
      return temp_array.join('/');
    }
        
  }; //end overridable functions
   
// end of closure

})(jQuery);
