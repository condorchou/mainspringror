//
//create closure
//
(function($){
  

  $.fn.mainspring = function(options){
      
       //options override defaults
       $.mainspring.opts = $.extend({}, $.mainspring.defaults, options);       
       //if localStorage is empty
       
                     
       //this jQuery object
       element = this;
       
       //inject css styling for the canvas to position layers absolutely and to set default cursor
       $.mainspring.injectCSS();

       element.append("<iframe width='"+$.mainspring.opts.width+"' height='"+$.mainspring.opts.height+"' src="+'"' +$.mainspring.getDomain()+ '?auth_token='+$.mainspring.opts.authentication_token+'"'+"></iframe>");
          
                    
       return element;

  }; //end fn.mainspring function


    //overridable static functions 
  $.mainspring = {
    
    //default settings
    defaults : {
        environment: "development",
        clientHandle: "belsobeer",
        name: "Joy McDee",
        location: "Los Angeles, CA",
        authentication_token: "belsobeer_joy@belsobeer.com",
        width: 800,
        height: 800
    },
    
    //options
    opts: {},
    getDomain: function() {
        var url = "http://127.0.0.1:8080"
        if ($.mainspring.opts.environment == 'staging') {
          url = "http://staging.mainspringror.com"
        } else if ($.mainspring.opts.environment == 'production') {
          url = "http://production.mainspringror.com"
        }
        url = url+"/clients/"+$.mainspring.opts.clientHandle;
        return url;
    },
    injectCSS: function() {
      
        $('head').append('<link rel="stylesheet" href="' + $.mainspring.getDomain() + '/clients/stylesheet.css' + '" type="text/css" />');
    }
    
    }; //end overridable functions
   
// end of closure

})(jQuery);


