
# Require node modules
express = require 'express'
http = require 'http'
path = require 'path'
engines = require 'consolidate'

# Require our own routes
routes = require './routes'

# Create the app
app = express()

# set up view engine
app.set 'views', path.join __dirname, 'views'
app.set 'view engine', 'handlebars'
app.set 'view options', {layout: true}

app.engine '.handlebars', engines.handlebars

# Register middlewares
# serve static files using node. this should not be done in production
app.use express.static path.join __dirname, 'public'
app.use app.router

# Register routes
app.get '/', routes.index

# catch 404 and forward to error handler
# app.use (req, res, next) ->
#   err = new Error 'Not Found!'
#   err.status = 404
#   next err

# # development error handler prints stack trace
# if app.get('env') == 'development'
#   app.use (err, req, res, next) ->
#     res.render 'error',
#       message: err.message
#       error: err

# # production error handler
# app.use (err, req, res, next) ->
#   res.render 'error',
#     message: err.message
#     error: {}

# Export the app
module.exports = app
