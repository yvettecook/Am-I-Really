server = require '../app.coffee'
chai = require 'chai'
expect = chai.expect
Browser = require 'zombie'

describe 'Visiting the homepage', ->

	beforeEach ->
	browser = new Browser({site: 'http://localhost:4000' })
	browser.visit 'http://localhost:4000/', ->
	

	it 'should have a heading with the simple question', (done) ->
		expect(browser.text('h1')).to.equal('Am I Really a Fucking Feminist?')
		done()

	it 'should have a simple statement', (done) ->
		expect(browser.text('h2')).to.equal('I believe in the complete equality of men and women.')
		done()

