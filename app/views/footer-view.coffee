View = require 'views/base/view'
template = require 'views/templates/footer'

module.exports = class FooterView extends View
  autoRender: yes
  className: 'footer'
  container: '#footer-container'
  id: 'footer'
  template: template
