express = require 'express'

app = express()

# Set the variables
PORT = 3000


app.configure ->
    app.set 'port', process.env.PORT || PORT


app.get '/index.html', (req, res) ->
    body = 'Hello world'
    res.setHeader 'Content-Type', 'text/plain'
    res.setHeader 'Content-Length', Buffer.byteLength body
    res.end body


app.listen PORT
