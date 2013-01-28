$(function() {
  $( "#list_modal" ). dialog ({
      resizable: false,
      draggable: false,
      height: 450,
      width: 700,
      modal: true,
  });
  $("#submit_button")
   //.button()
   .click(function() {
     createCookie("seen_modal", true, 30);
     $("#list_modal").dialog("close");
  });
  $("#cancel_button")
    .click(function() {
      createCookie("seen_modal", true, 30);
      $("#list_modal").dialog("close");
  });
  $(".ui-dialog-titlebar").hide();
});

function createCookie(name,value,days) {
  if (days) {
    var date = new Date();
    date.setTime(date.getTime()+(days*24*60*60*1000));
    var expires = "; expires="+date.toGMTString();
  }
  else var expires = "";
  document.cookie = name+"="+value+expires+"; path=/";
}
