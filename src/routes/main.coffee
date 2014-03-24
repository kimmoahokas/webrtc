
# Register the routes here
module.exports = (app) ->
  app.get '/', main


# render the main page
main = (req, res) ->
  res.render 'index',
    title: 'Express'
