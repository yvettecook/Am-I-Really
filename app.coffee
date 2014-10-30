express = require 'express'
app = express()

app.set "port", process.env.PORT or 4000
app.set 'view engine', 'ejs'

app.get '/', (req, res) ->
 res.render 'index',

app.listen app.get('port'), ->
	console.log "Listening on port #{app.get('port')}"
