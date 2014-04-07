$ ->
  editor = ace.edit 'file-1-editor'
  editor.setTheme 'ace/theme/solarized_light'
  editor.getSession().setMode 'ace/mode/html'