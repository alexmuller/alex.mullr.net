//= require vendor/jquery

$(function () {

  $("#gravatar").click(function(e) {
    this.height = "320";
    this.width = "320";
    e.preventDefault();
  });

});
