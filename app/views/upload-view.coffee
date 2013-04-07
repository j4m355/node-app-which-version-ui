template = require 'views/templates/upload'
View = require 'views/base/view'

module.exports = class UploadView extends View
  autoRender: yes
  className: 'home-page'
  container: '#page-container'
  template: template
