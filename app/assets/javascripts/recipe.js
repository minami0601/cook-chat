$(function() {
  var height=$("#header").height();
  $("body").css("margin-top", height);//10pxだけ余裕をもたせる

  $("#test").t({
    speed:120,
    speed_vary:true,
    blink:false,
    caret:false,
  });
});