CKEDITOR.editorConfig = function( config )
{
  config.toolbar_Basic =
  [
    { name: 'clipboard', items : [ 'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo' ] },
    { name: 'basicstyles', items : [ 'Bold', 'Italic', 'Strike', '-', 'RemoveFormat' ] },
    { name: 'paragraph', items : ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote' ] }
  ];
  config.toobar = 'Basic';
  config.resize_maxWidth = '500px';
  config.width = '700px';
  config.height = '200px';
}
