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
        authorization_token: "belsobeer_joy@belsobeer.com"
    },
    
    //options
    opts: {},

    injectCSS: function() {
        var url = "http://127.0.0.1:8080"
        if ($.mainspring.opts.environment == 'staging') {
          url = "http://staging.mainspringror.com"
        } else if ($.mainspring.opts.environment == 'production') {
          url = "http://production.mainspringror.com"
        }

        $('head').append('<link rel="stylesheet" href="' + url + '/clients/stylesheet.css' + '" type="text/css" />');
    }
    
    }; //end overridable functions
   
// end of closure

})(jQuery);


