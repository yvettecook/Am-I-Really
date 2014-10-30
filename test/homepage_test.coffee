server = require '../app.coffee'
chai = require 'chai'
expect = chai.expect
Browser = require 'zombie'

describe 'Visiting the homepage', ->


	it 'should have a heading with the simple question', (done) ->
		browser = new Browser({site: 'http://localhost:4000' })
		browser.visit 'http://localhost:4000/', ->
			expect(browser.text('h3')).to.equal('Am I Really a Fucking Feminist?')
			done()

