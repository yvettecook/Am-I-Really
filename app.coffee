express = require 'express'
app = express()

app.set "port", process.env.PORT or 4000

app.get '/', (req, res) ->
 res.send 'Hello world'

app.listen app.get('port'), ->
	console.log "Listening on port #{app.get('port')}"
