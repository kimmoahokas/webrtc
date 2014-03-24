
# Set up the socket.io here. this function is called from index.coffee
module.exports = (io) ->
  io.sockets.on 'connection', (socket) ->
    socket.emit 'news', hello: 'world'
    socket.on 'my other event', (data) ->
      console.log data
