View = require 'views/base/view'
template = require 'views/templates/header'

{ApplicationCollection} = require '../collections/application-collection'

module.exports = class HeaderView extends View
     autoRender: yes
     className: 'header'
     container: '#header-container'
     id: 'header'
     template: template

     initialize: ()->
     	super
     	@applicationList = new ApplicationCollection()
     	console.log @applicationList
