server = require '../../app.coffee'
Browser = require 'zombie'
chai = require 'chai'
expect = chai.expect

describe 'Visiting the homepage', ->

	before ->
		server = server.listen(3000)
		browser = new Browser({site: 'http://localhost:3000' })

	it 'should have a heading with the simple question', (done) ->
		browser.visit 'http://localhost:3000/', ->
			expect(browser.text('h3')).to.equal('Am I Really a Fucking Feminist?')
			done()

