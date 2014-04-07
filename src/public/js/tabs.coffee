$ ->
  # Remove icon clicked
  ($ '.nav').on 'click', '.glyphicon-remove', ->
    # Find the ID of the content element
    $this = $ this
    tabId = (($this.siblings 'a')[0].href.split '#')[1] # ID of the content element associated with the tab
    openTabs = ($ '.nav > li').length                   # Amount of open tabs
    currentIndex = $this.parent().index '.nav > li'     # Index of the current tab
    isActive = $this.parent().hasClass('active')        # Whether or not the tab is active

    # If the content ID is builtin-welcome and there are no other tabs, do not close it
    if tabId == 'builtin-welcome'
      if openTabs == 1
        return
      $this.parent().remove()

    # If the content ID is not builtin-welcome, remove the content element and the tab
    else
      $this.parent().remove()
      ($ '#' + tabId).remove()

    # If there are zero tabs present (ie. there was only one tab open), create a new tab for the builtin-welcome
    # element
    if openTabs == 1
      ($ '.nav').prepend $ '<li><a href="#builtin-welcome" data-toggle="tab">Welcome</a>' +
                           '<span class="glyphicon glyphicon-remove"></span></li>'
      ($ '.nav > li > a').tab 'show'
      return

    # Otherwise if the element was active, activate the tab at the same index as the removed one was, or failing that,
    # activate the last tab
    if isActive
      $tabs = $ '.nav > li'
      if currentIndex >= ($ '.nav > li').length
        ($ $tabs.last()).tab 'show'
      else
        ($ $tabs.get(currentIndex)).find('a').tab 'show'