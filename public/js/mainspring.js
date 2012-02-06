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
       $('head').append('<link rel="stylesheet" href="'+$.mainspring.getHost()+'/css/style.css" type="text/css"/>');
       $('head').append('<link rel="stylesheet" href="'+$.mainspring.getClientServiceURL()+'/style.css" type="text/css"/>');
       $('head').append('<link rel="stylesheet" href="'+$.mainspring.getHost()+'/css/custom-theme/jquery-ui-1.8.17.custom.css" type="text/css"/>');
			 /*
       $('head').append('<script src="'+$.mainspring.getHost()+'/js/jquery-ui-1.8.17.custom.min.js"></script>');
       $('head').append('<script src="'+$.mainspring.getHost()+'/js/jquery.tmpl.min.js"></script>');
       $('head').append('<script src="'+$.mainspring.getHost()+'/js/jquery.cookie.js"></script>');
       $('head').append('<script src="'+$.mainspring.getClientServiceURL()+'/behavior.js"></script>');
			 */
                     
			 //local test copy before copy to sepcific servert
       //$('head').append('<link rel="stylesheet" href="'+$.mainspring.getCommonURL()+'/css/custom.css" type="text/css"/>');
				 $.ajax({url: $.mainspring.getHost()+'/js/jquery.tmpl.min.js', dataType:'script', cache:'true'});
				 $.ajax({url: $.mainspring.getHost()+'/js/jquery.cookie.js', dataType:'script', cache:'true'});
				 $.ajax({url: $.mainspring.getHost()+'/js/quickpager.jquery.js', dataType:'script', cache:'true'});

				 //local test copy before copy to sepcific servert
				 //$.ajax({url: $.mainspring.getHost()+'/js/msextension.js', dataType:'script'});
				 $.ajax({url: $.mainspring.getClientServiceURL()+'/behavior.js', dataType:'script', cache:'true'});

				 if (true) {
					 $.ajax({url: $.mainspring.createUserJsonpURL(), cache:true, dataType:'jsonp', jsonpCallback:'jQuery.mainspring.setUserCookie' });
				 }

       $.ajax({url: $.mainspring.getHost()+'/js/jquery-ui-1.8.17.custom.min.js', dataType:'script', cache:'true',success:function(){
				 //fetch remote page with jsonp ajax call with authentication and call a callback method
				 $.mainspring.fetchRemoteURI($.mainspring.opts.remoteURI);
				 }
			 });

       return this;

  }; //end fn.mainspring function

	function isNumber(x) 
	{ 
		return ( (typeof x === typeof 1) && (null !== x) && isFinite(x) );
	};

	
	function getOpts(){
		return $.mainspring.opts;
	};
	

	function setupComments(video,config){
		$('#comments_submit_button').live('click',function(){
			processComments(video, config);
		});
	};
	
	function processComments(video,config){

		var aOpts = getOpts();
		var aUrl = $.mainspring.decodeRemoteURI("videos/"+video.id +"/comments.json");
		aUrl += "?auth_token="+aOpts.clientHandle+"_"+aOpts.clientUserID+"&_method=POST&comment[body]=";
    aUrl += encodeURI($("#comment_form textarea").val());
		$.ajax({url: aUrl, dataType:'jsonp', jsonpCallback: "$.mainspring.renderNewComments"})
		$("textarea#body.comments_text_area").attr('value','');

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
		crossdomain: 2, //0 - localhost, 1 - intranet, 2 - deployed servert
    
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
    },

		renderTabs: function(data){

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
							url = $.mainspring.decodeRemoteURI("videos.json");
							$.ajax({url: url, dataType:'jsonp', jsonpCallback: "$.mainspring.renderTiles"})

					});
				});
			});
		},

		renderNewComments: function(data){
			var acomment = {username: this.opts.name,created_at:data.created_at,body:data.body};
			var data = {comment:acomment};
			//renderComments(data);
			$.get("tmpl/comments.html", function(template){
				$.tmpl(template, data).prependTo("#comments");
			});
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
			if(typeof(data) !== 'undefined'){
				var tiles = new Array();
				for(i = 0; i < data.length; i++){
					tiles[i] = data[i].video;
				}

				$("div.video_tile_wrapper").remove();
				$.get("tmpl/tiles.tmpl.html", function(template){	
					$.tmpl(template, tiles).appendTo("#grid");
				});
			}

		},

		getTileInfo: function(search){
				var callback = $.mainspring.renderTiles;
				url = $.mainspring.decodeRemoteURI("videos.json?search="+search);
				$.ajax({url: url, dataType:'jsonp', jsonpCallback: '$.mainspring.renderTiles'})
		},

		renderSearchResults: function(data){
			//parse data for search rendering
			for(i = 0; i < data.length; i++){
				/*if($.mainspring.debug === true){
					data[i].video.botr_video_key = "EVwCtgxd";
				}*/
				//old label based tags
				//data[i].video.label = data[i].video.label.split(',');
				data[i].video.label = data[i].video.tags;
			}

			$("#ms_wrapper div").remove();
			$.get("tmpl/search.tmpl.html", function(template){
				$.tmpl(template,{terms:$.cookie('search'), backUrl:$.cookie('backUrl')}).appendTo("#ms_wrapper");
			});

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
			$.cookie("search", search);
			$.cookie("backUrl", $(location).attr('href'));

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
			//if(typeof(data[0].video.label) !== 'undefined'){
			if(typeof(data[0].video.tags) !== 'undefined'){
				//data[0].video.label =	data[0].video.label.split(",");	
				data[0].video.label =	data[0].video.tags;
			}
				
			var searchUrl = [{search_url: "http://google.com"}];
			
			//Grab main template structure
			$.get('tmpl/template.html', function(template){
				$.tmpl(template, data[0].video).appendTo("#connect_tv_container");
					
				//initialize comments
				setupComments(data[0].video,this);

			});
			
			//If no tabs defined set to 0
			if(!isNumber(Number($.cookie('mstab'))))
				$.cookie('mstab',0);

			//Render tabs based on tabs data
			$.mainspring.renderTabs($.cookie('mstab'));

			//if we have comments render comments
			if(typeof(comments) !== 'undefined')
			{
				renderComments(comments);
			}
			
			//Render video template
			$.get("tmpl/video.tmpl.html", function(template){	
				$.tmpl(template, data[0].video).appendTo("#video_embed_container");
			});

			$.cookie("backUrl", $(location).attr('href'));
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
			if($.mainspring.crossdomain == 0)
				var url = "http://localhost:8080";
			else if($.mainspring.crossdomain == 1)
				var url = "http://10.0.1.7:8080";
			else if($.mainspring.crossdomain == 2)
				var url = "http://www.mainspringror.com";

      //var url = "http://127.0.0.1:8080";
      //var url = "http://192.168.2.10:8080";
      if ($.mainspring.opts.environment == 'staging') {
         url = "http://staging.mainspringror.com";
      } else if ($.mainspring.opts.environment == 'production') {
         url = "https://production.mainspringror.com";
      } else if ($.mainspring.opts.environment == 'development'){
				var url = "http://www.mainspringror.com";
      }
      return url;
    },
    getCommonHost: function() {
			if($.mainspring.crossdomain == 0)
				var url = "http://localhost";
			else if($.mainspring.crossdomain == 1)
				var url = "http://10.0.1.7:8888";
			else if($.mainspring.crossdomain == 1)
				var url = "http://www.mainspringror.com";

      //var url = "http://127.0.0.1:8080";
      //var url = "http://192.168.2.10:8080";
      if ($.mainspring.opts.environment == 'staging') {
         url = "http://staging.mainspringror.com";
      } else if ($.mainspring.opts.environment == 'production') {
         url = "https://production.mainspringror.com";
      } else if ($.mainspring.opts.environment == 'development'){
				var url = "http://www.mainspringror.com";
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
