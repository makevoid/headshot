(function() {
  $(function() {
    (function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,timeStamp,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();){b[a]=b[a]||c}})((function(){try
  {console.log();return window.console;}catch(err){return window.console={};}})());
  ;
    var bind_load, img, left, top;
    $("#img img").hover(function() {
      return $("#hshot_bg").fadeIn();
    }, function() {
      return $("#hshot_bg").fadeOut();
    });
    bind_load = function(img) {
      return img.bind("load", function() {
        return $("#spinner").animate({
          opacity: 0
        }, 400);
      });
    };
    $("#hshot").bind("submit", function() {
      var params;
      $("#spinner").animate({
        opacity: 1
      }, 400);
      params = {
        url: $(this).find("input#url").val().replace(/\s/, '')
      };
      $("#error").html("&nbsp;");
      $.post("/hshot", params, function(data) {
        var img;
        img = $(".himg");
        bind_load(img);
        if (data.error) {
          $("#error").html(data.error);
          return $("#spinner").animate({
            opacity: 0
          }, 400);
        } else {
          return img.attr("src", data.url);
        }
      });
      return false;
    });
    img = $("#img img");
    $("body").append("<div id='hshot_bg'></div>");
    $("#img img").clone().appendTo("#hshot_bg");
    left = img.offset().left;
    top = img.offset().top;
    return img.css({
      left: -left,
      top: -top,
      width: $(window).width()
    });
  });
}).call(this);
