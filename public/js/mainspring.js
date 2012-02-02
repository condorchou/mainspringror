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
			 
       $('head').append('<link rel="stylesheet" href="'+$.mainspring.getClientServiceURL()+'/style.css" type="text/css"/>');
       $('head').append('<link rel="stylesheet" href="'+$.mainspring.getCommonURL()+'/css/style.css" type="text/css"/>');
       //$.ajax({url: $.mainspring.getClientServiceURL()+'/behavior.js', dataType:'script'});
       //$.get($.mainspring.getClientServiceURL()+'/behavior.js');//, function(data){alert(data);});
       var aUrl = $.mainspring.getClientServiceURL()+'/behavior.json?callback=?';
			 $.ajax({url: aUrl, 
			 					dataType:'jsonp', 
								jsonp:'callback', 
								jsonpCallback: "$.mainspring.test",
								dataType:'json',
								error: function(xhr, status){
									console.log(xhr);
								}
							});

       //TODO: only need to do this once, so store user id in cookie
       if (true) {
         $.ajax({url: $.mainspring.createUserJsonpURL(), cache:true, dataType:'jsonp', jsonpCallback:'jQuery.mainspring.setUserCookie' });
       }

       //fetch remote page with jsonp ajax call with authentication and call a callback method
       $.mainspring.fetchRemoteURI($.mainspring.opts.remoteURI);
				$.cookie({"backUrl": $(location).attr('href')});

       return this;

  }; //end fn.mainspring function

	function renderTabs(data){

		$.cookie({"tab": data});

		var video = [{t:1},{t:2},{t:3},{t:4}];
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
						//alert(ui.index);   // zero-based index of the selected (clicked) tab
						$("#grid div").remove();
						url = $.mainspring.decodeRemoteURI("videos.json");
						$.ajax({url: url, dataType:'jsonp', jsonpCallback: "$.mainspring.renderTiles"})

				});
			});
		});
	};
	
	function getOpts(){
		return $.mainspring.opts;
	};
	

	function setupComments(video,config){
		$('#comments_submit_button').live('click',function(){
			processComments(video, config);
		});
	};
	/*
	function renderNewComments(data){
		alert(eval(data));
	};
	*/

	function processComments(video,config){

		var aOpts = getOpts();
		var aUrl = $.mainspring.decodeRemoteURI("videos/"+video.id +"/comments.json");
		aUrl += "?auth_token="+aOpts.clientHandle+"_"+aOpts.clientUserID+"&_method=POST&comment[body]=";
    aUrl += encodeURI($("#comment_form textarea").val());
		$.ajax({url: aUrl, dataType:'jsonp', jsonpCallback: "$.mainspring.renderNewComments"})

		/*$.post(aUrl, function(data){
		})
		.success(function(data){alert("add comment success")})
		.error(function(data){alert("comment add error");console.log(data)})//alert("ilikeit error")})
		.complete(function(data){
			console.log(data);
			//$("#comment_form textarea").animate({color:"#FFF"}).val('').css({'color':'#000'}).show();
			$("#comment_form textarea").val('');
		});
		*/
	};

	function renderComments(data){
			$.get("tmpl/comments.html", function(template){
				$.tmpl(template, data).appendTo("#comments");
				$("#comments").quickPager({pageSize:10});
			});
	};
  $.mainspring = {

		debug: true, 
    
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
		renderNewComments: function(data){
			alert(eval(data));
		},

    //overridable static functions 
		ilikethis: function(userid,videoid){
				var time = new Date().getTime();
				var aUrl = "http://localhost:8080";
				var at = this.opts.clientHandle+"_"+this.opts.clientUserID;
				aUrl += "/clients/"+this.opts.clientHandle+"/videos/"+videoid+"/likes.json";
				aUrl += "?auth_token="+at+"&_method=POST";

				$.post(aUrl, function(data){})
				.success(function(){if($.mainspring.debug === true)alert("ilikeit success")})
				.error(function(){})//alert("ilikeit error")})
				.complete(function(){
						var img = "<img alt=\"i liked this\" src=\"images/thumb_up_gray.gif\" />";
						$('#ilikethis').hide().replaceWith(img).fadeIn();
						
				});
				

		},
		renderTiles: function(data){
      //console.log(data);
			var tiles = new Array();
			//alert(data.length);
			for(i = 0; i < data.length; i++){
				tiles[i] = data[i].video;
				if($.mainspring.debug == true){
					tiles[i].botr_video_key = "EVwCtgxd";
				}
			}

			$.get("tmpl/tiles.tmpl.html", function(template){	
				$.tmpl(template, tiles).appendTo("#grid");
			});

		},

		renderSearchResults: function(data){
			//parse data for search rendering
			for(i = 0; i < data.length; i++){
				if($.mainspring.debug === true){
					data[i].video.botr_video_key = "EVwCtgxd";
				}
				data[i].video.label = data[i].video.label.split(',');
			}

			$("#ms_wrapper div").remove();
			$.get("tmpl/search.tmpl.html", function(template){
				$.tmpl(template,{terms:$.cookie('search'), backUrl:$.cookie('backUrl')}).appendTo("#ms_wrapper");
			});
			//reuse search
			/*
			$.get("tmpl/search.html", function(template){
				$.tmpl(template,data).appendTo("#search_box");
			});
			*/
			//grab template for individual search results
			if(data.length > 0){
				$.get("tmpl/searchEntry.tmpl.html", function(template){
					$.tmpl(template,data).appendTo("#searchListContainer");
					$("#searchListContainer #noresults").remove();
				});
			}
				
		},


    performSearch: function(data) {
			//search value
			var search = 0;
			if(typeof(data) === 'undefined'){
				search = $("input#search_box").val();
			}else{
				search = data;	
			}

			$.cookie({"search": search});
			$.cookie({"backUrl": $(location).attr('href')});

			var aUrl = $.mainspring.decodeRemoteURI("videos.json?search="+search);
			$.ajax({url: aUrl, dataType:'jsonp', jsonpCallback: "$.mainspring.renderSearchResults"})
		},

    renderPage: function(data) {
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
		
			var comments = data[0].video.comments;

			if(typeof(comments) === 'undefined'){
				data[0].video.num_comments = 0;
			}else{
				data[0].video.num_comments = comments.length;
			}

			data[0].video.name = this.opts.name;
			data[0].video.location = this.opts.location;
			var tmp = data[0].video.release_date.split("T");
			data[0].video.release_date = tmp[0];//.substring(0,tmp[0].length-1);
			data[0].video.userid = $.mainspring.opts.clientUserID;
			data[0].video.video_player = "<script type=text/javascript src=http://content.bitsontherun.com/players/EVwCtgxd-kasi1DWo.js>";

			if(data[0].video.liked_by_current_user === false){
				data[0].video.thumbs_up_link = "<a href=\"#\" onclick=\"$.mainspring.ilikethis('"+data[0].video.userid+"','"+data[0].video.id+"'); return false;\"><img alt=\"i like this\" border=\"none\" src=\"images/thumb_up.gif\" /></a>";
			}else{
				data[0].video.thumbs_up_link = "<img alt=\"i liked this\" src=\"images/thumb_up_gray.gif\" />";
			}
			data[0].video.label =	data[0].video.label.split(",");	
				
			var searchUrl = [{search_url: "http://google.com"}];
			
			//Grab main template structure
			$.get('tmpl/template.html', function(template){
				$.tmpl(template, data[0].video).appendTo("#connect_tv_container");
					
				//initialize comments
				setupComments(data[0].video,this);

			});
			
			//Render tabs based on tabs data
			//$.mainspring.renderTabs(data[0].video.tab_highlight);
			renderTabs(data[0].video.tab_highlight);

			//if we have comments render comments
			if(typeof(comments) !== 'undefined')
			{
				renderComments(comments);
			}
			
			//Lets add in the search box
			$.get("tmpl/search.html", function(template){	
				$.tmpl(template, searchUrl).appendTo("#search_box");
			});

			//Render video template
			$.get("tmpl/video.tmpl.html", function(template){	
				$.tmpl(template, data[0].video).appendTo("#video_embed_container");
			});

    },
    setUserCookie: function(data) {
    //alert("set the returned user id into the cookie so we don't need to make this call again");
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
      var url = "http://10.0.1.7:8080";
      //var url = "http://127.0.0.1:8080";
      //var url = "http://192.168.2.10:8080";
      if ($.mainspring.opts.environment == 'staging') {
         url = "http://staging.mainspringror.com";
      } else if ($.mainspring.opts.environment == 'production') {
         url = "https://production.mainspringror.com";
      }
      return url;
    },
    test: function(data) {
			console.log(data);	
		},
    getCommonHost: function() {
      var url = "http://10.0.1.7:8888";
      //var url = "http://127.0.0.1:8080";
      //var url = "http://192.168.2.10:8080";
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
		getCommonURL: function(){
        url = $.mainspring.getCommonHost()+"/mainspringror/public";
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
