express = require 'express'
 
app = express()
app.use(express.bodyParser())
 
app.use (req, res, next) ->
  res.contentType('application/json')
  next()
  
app.get '/message', (req, res)  ->
    body = 
      message: 'Hello world'
        
    res.send 200, body

app.listen 3000
console.log('Listening on port 3000');