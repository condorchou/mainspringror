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

       $.ajax({url: $.mainspring.createUserJsonpURL(), cache:true, dataType:'jsonp', jsonpCallback: "$.mainspring.displayVideo"})



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
      var decodedRemoteURI = $.mainspring.decodeRemoteURI(remoteURI);
      $.getJSON(decodedRemoteURI+".json?auth_token="+$.mainspring.opts.clientHandle + '_' + $.mainspring.opts.clientUserID +"&callback=?",
        function(data) {
          $.mainspring.displayVideo(data);
          //test
          $.mainspring.opts.data = data;
        });
    },
    displayVideo: function(data) {
      console.log(data);
    },
    displaySearchResults: function(data) {
    },

    createIframe: function(authentication_token) {
       $.mainspring.opts.element.append("<iframe width='"+$.mainspring.opts.width+"' height='"+$.mainspring.opts.height+
       "' src="+'"' +$.mainspring.decodeRemoteURI()+ '"'+"></iframe>");
          

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
      return $.mainspring.getHost() + '/authenticate?client_handle='+$.mainspring.opts.clientHandle+
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


