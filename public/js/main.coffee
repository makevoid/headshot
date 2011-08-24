$( ->
  #// use console.log safely
  `(function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,timeStamp,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();){b[a]=b[a]||c}})((function(){try
  {console.log();return window.console;}catch(err){return window.console={};}})());
  `
  
  $("#img img").hover( ->
      #console.log "over"
      # $("#img").width("100%").height(700)
      $("#hshot_bg").fadeIn()
    , ->
      #console.log "out"
      $("#hshot_bg").fadeOut()      
      # $("#img").width(300).height(100)
  )
  
  bind_load = (img) ->
    img.bind( "load", ->
      $("#spinner").animate {opacity: 0}, 400
    )
  
  $("#hshot").bind("submit", ->
    $("#spinner").animate {opacity: 1}, 400
    params = { url: $(this).find("input#url").val().replace(/\s/, '') }
    $("#error").html("&nbsp;")
    $.post("/hshot", params, (data) ->
      img = $(".himg")
      
      bind_load(img)
      
      if data.error
        $("#error").html(data.error)
        $("#spinner").animate {opacity: 0}, 400
      else
        img.attr("src", data.url)
      
      #console.log(data)
    )
    return false
  )


  # init
  img = $("#img img")
  
  $("body").append("<div id='hshot_bg'></div>")
  $("#img img").clone().appendTo("#hshot_bg")
  
  #   $("#img img").load( ->
  left = img.offset().left
  top = img.offset().top
  img.css({ left: -left, top: -top, width: $(window).width()})

)
