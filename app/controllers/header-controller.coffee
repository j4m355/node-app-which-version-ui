Controller = require 'controllers/base/controller'
HeaderView = require 'views/header-view'

module.exports = class HeaderController extends Controller
  	initialize: ->
    	super
    	#@delegate 'click', '#login', @loginForm
	    #@delegate 'click', '#signup', @registerForm
    	@view = new HeaderView()


