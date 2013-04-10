Controller = require 'controllers/base/controller'
HomePageView = require 'views/home-page-view'
AboutView = require 'views/about-view'
LibraryView = require 'views/library-view'

module.exports = class HomeController extends Controller
    index: =>
        console.log "stank"
        @view = new HomePageView()
        
    about: =>
        console.log "stank bum"
        @view = new AboutView()

    library: =>
        console.log "Sister Catherine"
        @view = new LibraryView()
