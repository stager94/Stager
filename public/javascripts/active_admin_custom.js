$(document).ready(function() {
  load_editors();
  tinyMCE.init({
	  mode : "textareas",
	  theme : "advanced",
	  theme_advanced_buttons1 : "bold, italic, underline, strikethrough, |, bullist, numlist, blockquote, |, undo, redo, |, link, unlink, code",
	  theme_advanced_buttons2 : "",
	  theme_advanced_buttons3 : "",
	  theme_advanced_toolbar_location : "top",
	  theme_advanced_toolbar_align : "center",
	  theme_advanced_resizing : false
	});
});

function load_editors(){
  $('.mceEditor').tinymce({
  //removed settings to keep it short.
  });
}

