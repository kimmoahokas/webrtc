$ ->
  $fl = $ "#navigator"
  ($fl.find ".folder").prepend '<span class="glyphicon glyphicon-folder-open"></span>'
  ($fl.find ".src").prepend '<span class="glyphicon glyphicon-file"></span>'
  ($fl.find ".image").prepend '<span class="glyphicon glyphicon-picture"></span>'