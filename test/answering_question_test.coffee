server = require '../app.coffee'
chai = require 'chai'
expect = chai.expect
Browser = require 'zombie'

describe 'Answering the question', ->

	beforeEach ->
	browser = new Browser({site: 'http://localhost:4000' })
	browser.visit 'http://localhost:4000/'

	it 'should display a message if the user clicks yes', ->
		browser.clickLink('#yes')
		expect(browser.text('h3')).to.eq('Yes, you are a fucking feminist.')


	
