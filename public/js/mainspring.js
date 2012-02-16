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
       //$('head').append('<link rel="stylesheet" href="http://localhost:8080/css/style.css" type="text/css"/>');


       $('head').append('<link rel="stylesheet" href="'+$.mainspring.getClientServiceURL()+'/style.css" type="text/css"/>');
       $('head').append('<link rel="stylesheet" href="'+$.mainspring.getHost()+'/css/custom-theme/jquery-ui-1.8.17.custom.css" type="text/css"/>');
                     
			 //local test copy before copy to sepcific servert
       //$('head').append('<link rel="stylesheet" href="'+$.mainspring.getCommonURL()+'/css/custom.css" type="text/css"/>');
				 $.ajax({url: $.mainspring.getHost()+'/js/jquery.cookie.js', dataType:'script', cache:'true'});
				 $.ajax({url: $.mainspring.getHost()+'/js/quickpager.jquery.js', dataType:'script', cache:'true'});

				 $.ajax({url: $.mainspring.getHost()+'/js/jquery.tmpl.min.js', dataType:'script', cache:'true',success:function(){
					 $.ajax({url: $.mainspring.getClientServiceURL()+'/behavior.js', dataType:'script', cache:'true',success:function(){
							$.mainspring.templateTmpl = $.template(null,templateTmpl());
							$.mainspring.commentsTmpl = $.template(null,commentsTmpl());
							$.mainspring.searchEntryTmpl = $.template(null,searchEntryTmpl());
							$.mainspring.searchTmpl = $.template(null,searchTmpl());
							$.mainspring.videoTmpl = $.template(null,videoTmpl());
							$.mainspring.tabContainerTmpl = $.template(null,tabContainerTmpl());
							$.mainspring.tabTmpl = $.template(null,tabTmpl());
							$.mainspring.tilesTmpl = $.template(null,tilesTmpl());
					 }});
				 }});

				 //local test copy before copy to sepcific servert
				 //$.ajax({url: $.mainspring.getHost()+'/js/msextension.js', dataType:'script'});

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

	function showLoading(){
		$("#grid").hide();
		$("#loader").show();
	}
	function hideLoading(){
		$("#loader").hide();
		$("#grid").show();
	}

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

	};

	function renderComments(data){
		$.tmpl($.mainspring.commentsTmpl, data).appendTo("#comments");
		$("#comments").quickPager({pageSize:10});
	};

  $.mainspring = {

		debug: true, 
		crossdomain: 2, //0 - localhost, 1 - intranet, 2 - deployed servert
    
		templateTmpl: 0,// = $.template(null,templateTmpl());
		searchEntryTmpl: 0,// = $.template(null,searchEntryTmpl());
		searchTmpl : 0, //$.template(null,searchTmpl());
		videoTmpl : 0, //$.template(null,searchTmpl());
		commentsTmpl : 0, //$.template(null,commentsTmpl());
		tabContainerTmpl : 0,//$.template(null,tabContainerTmpl());
		tabTmpl : 0, // $.template(null,tabTmpl());
		tilesTmpl : 0,//$.template(null,tilesTmpl());
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

					//$.tmpl(tabTmpl,video).appendTo("#tab_container");
					$.tmpl($.mainspring.tabContainerTmpl).appendTo("#tab_container");
					$.tmpl($.mainspring.tabTmpl,video).appendTo("#tab_top");
					$('#nav_div').tabs();
					$('#nav_div').tabs('select', data); // switch to third tab
					$('#nav_div').bind('tabsselect', function(event, ui) {
							 // Objects available in the function context:
							url = $.mainspring.decodeRemoteURI("videos.json");
							$.ajax({url: url, dataType:'jsonp', jsonpCallback: "$.mainspring.renderTiles"})

					});
		},

		formatDate: function(data){
			 var dt = new Date(data);
			var month=new Array(12);
			month[0]="Jan";
			month[1]="Feb";
			month[2]="Mar";
			month[3]="Apr";
			month[4]="May";
			month[5]="Jun";
			month[6]="Jul";
			month[7]="Aug";
			month[8]="Sep";
			month[9]="Oct";
			month[10]="Nov";
			month[11]="Dec";
			// Get the month, day, and year.
			var s='';
			s += month[dt.getMonth()] + " ";
			s += dt.getDate() + " ";
			s += dt.getFullYear();
			return s;	
		},
		renderNewComments: function(data){
			var acomment = {username: this.opts.name,created_at:data.created_at,body:data.body};
			var data = {comment:acomment};
			//renderComments(data);
			$("#nocomments").hide();
			$.tmpl($.mainspring.commentsTmpl, data).prependTo("#comments");
		},

    //overridable static functions 
		ilikethis: function(userid,videoid){
				var time = new Date().getTime();
				var aUrl = $.mainspring.getHost();
				var at = this.opts.clientHandle+"_"+this.opts.clientUserID;
				aUrl += "/clients/"+this.opts.clientHandle+"/videos/"+videoid+"/likes.json";
				aUrl += "?auth_token="+at+"&_method=POST";

				$.post(aUrl, function(data){})
				.complete(function(){
						var img = "<img alt=\"i liked this\" src=\""+$.mainspring.getHost()+"/images/thumb_up_gray.gif\" />";
						$('#ilikethis').hide().replaceWith(img).fadeIn();
				});
				

		},
		renderTiles: function(data){
			$("#loader").attr("display","block");
			if(typeof(data) !== 'undefined'){
				var tiles = new Array();
				for(i = 0; i < data.length; i++){
					tiles[i] = data[i].video;
				}

				$("div.video_tile_wrapper").remove();
				hideLoading();
				$.tmpl($.mainspring.tilesTmpl, tiles).appendTo("#grid");
			}

		},

		getTileInfo: function(search){
				showLoading();
				url = $.mainspring.decodeRemoteURI("videos.json?search="+search);
				$.ajax({url: url, dataType:'jsonp', jsonpCallback: '$.mainspring.renderTiles'})
		},

		renderSearchResults: function(data){
			//parse data for search rendering
			for(i = 0; i < data.length; i++){
				data[i].video.label = data[i].video.tags;
			}

			$("#ms_wrapper div").remove();

			$.tmpl($.mainspring.searchTmpl,{terms:$.cookie('search'), backUrl:$.cookie('backUrl')}).appendTo("#ms_wrapper");

			//grab template for individual search results
			if(data.length > 0){
				$.tmpl($.mainspring.searchEntryTmpl,data).appendTo("#searchListContainer");
				$("#searchListContainer #noresults").remove();
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
				data[0].video.thumbs_up_link = "<a href=\"#\" onclick=\"$.mainspring.ilikethis('"+data[0].video.userid+"','"+data[0].video.id+"'); return false;\"><img alt=\"i like this\" border=\"none\" src=\""+$.mainspring.getHost()+"/images/thumb_up.gif\" /></a>";
			}else{
				data[0].video.thumbs_up_link = "<img alt=\"i liked this\" src=\""+$.mainspring.getHost()+"/images/thumb_up_gray.gif\" />";
			}
			//if(typeof(data[0].video.label) !== 'undefined'){
			if(typeof(data[0].video.tags) !== 'undefined'){
				//data[0].video.label =	data[0].video.label.split(",");	
				data[0].video.label =	data[0].video.tags;
			}
				
			var searchUrl = [{search_url: "http://google.com"}];
			
			//Grab main template structure
			$.tmpl($.mainspring.templateTmpl, data[0].video).appendTo("#connect_tv_container");
				//initialize comments
			setupComments(data[0].video,this);

			
			//If no tabs defined set to 0
			if(!isNumber(Number($.cookie('mstab'))))
				$.cookie('mstab',0);

			//Render tabs based on tabs data
			$.mainspring.renderTabs($.cookie('mstab'));

			//if we have comments render comments
			if(typeof(comments) !== 'undefined')
			{
				renderComments(comments);
			}else{
				$("#comments").append("<BR><BR><div id='nocomments' style='padding-left:20px;'><i>No Comments</i></div>");
			}
			
			//Render video template
			$.tmpl($.mainspring.videoTmpl, data[0].video).appendTo("#video_embed_container");

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
