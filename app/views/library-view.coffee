template = require 'views/templates/library'
View = require 'views/base/view'

module.exports = class LibraryView extends View
  autoRender: yes
  className: 'home-page'
  container: '#page-container'
  template: template
