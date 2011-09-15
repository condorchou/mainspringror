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
       $("head").append("<scr"+"ipt src='"+$.mainspring.createUserJsonpURL()+"'></scr"+"ipt>"); 

                         
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
        userID: "joy@belsobeer.com",
        width: 800,
        height: 800,
        encodedIframeURI : "videos"
    },
    
    //options
    opts: {},
    createIframe: function(authentication_token) {
       $.mainspring.opts.element.append("<iframe width='"+$.mainspring.opts.width+"' height='"+$.mainspring.opts.height+
       "' src="+'"' +$.mainspring.decodeEncodedIframeURI()+ '?auth_token='+
       authentication_token+'"'+"></iframe>");
          

    },
    encodeName: function() {
      return encodeURI($.mainspring.opts.name);
    },
    encodeUserID: function() {
      return encodeURI($.mainspring.opts.userID);
    },
    encodeLocation: function() {
      return encodeURI($.mainspring.opts.location);
    },
    createUserJsonpURL: function() {
      return $.mainspring.getHost() + '/authenticate.js?client_handle='+$.mainspring.opts.clientHandle+
      '&username='+$.mainspring.encodeName()+'&user_id='+$.mainspring.encodeUserID()+
      '&location='+$.mainspring.encodeLocation();
    },
    getHost: function() {
      var url = "http://127.0.0.1:8080";
      if ($.mainspring.opts.environment == 'staging') {
         url = "http://staging.mainspringror.com";
      } else if ($.mainspring.opts.environment == 'production') {
         url = "http://production.mainspringror.com";
      }
      return url;
    },
    getClientServiceURL: function() {
        url = $.mainspring.getHost()+"/clients/"+$.mainspring.opts.clientHandle;
        return url;
    },
    decodeEncodedIframeURI: function() {
      var temp_array = [$.mainspring.getClientServiceURL()];
      var src = decodeURIComponent($.mainspring.opts.encodedIframeURI);
      if (src != "") {
        temp_array.push(src);
      } else {
        temp_array.push("videos");
      }
      return temp_array.join('/');
    }
        
  }; //end overridable functions
   
// end of closure

})(jQuery);


