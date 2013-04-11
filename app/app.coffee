coffeescript = require 'coffee-script'
express = require 'express'
sysPath = require 'path'
httpProxy = require('http-proxy');

exports.startServer = (port, path, callback) ->
  server = express()
  server.use express.static path
  server.all '/*', (request, response) ->
    response.sendfile sysPath.join path, 'index.html'
  server.listen parseInt port, 10
  server.on 'listening', callback
  server

port = 8001
  
httpProxy.createServer((req, res, proxy) ->
  debugger
  if (req.url.indexOf("/api") is 0) 
    req.url = req.url.substring(4)
    req.headers["HOST"] = "localhost"
    buffer = httpProxy.buffer(req)
    setTimeout(() -> 
      proxy.proxyRequest(req, res, {
        host: 'localhost',
        port: 3403, 
        buffer: buffer
      })    
    , 5)
  else
    proxy.proxyRequest(req, res,
      host: 'localhost'
      port: 3333
    )
).listen(port)

console.log('Listening on port ' + port)