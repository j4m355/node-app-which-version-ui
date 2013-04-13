Controller = require 'controllers/base/controller'
HomePageView = require 'views/home-page-view'
AboutView = require 'views/about-view'
LibraryView = require 'views/library-view'

module.exports = class HomeController extends Controller
    index: =>
        @view = new HomePageView()
        
    about: =>
        @view = new AboutView()

    library: =>
        @view = new LibraryView()
