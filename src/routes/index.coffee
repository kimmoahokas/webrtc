# This file is required by app.coffee (require './routes')
# and the exported function is executed.

module.exports = (app, io) ->
  # require each of the files in the routes directory and run the exported
  # function. Give the app and socketio objects as parameters when needed
  require('./main')(app)
  require('./socketio')(io)



