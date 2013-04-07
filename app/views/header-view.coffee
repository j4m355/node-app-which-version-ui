View = require 'views/base/view'
template = require 'views/templates/header'

module.exports = class HeaderView extends View
     autoRender: yes
     className: 'header'
     container: '#header-container'
     id: 'header'
     template: template

    initialize: =>
        $.bind("#Login-Here", okClicked)

    okClicked: (modal)->
        alert("OK was clicked")
        modal.preventClose()

    modal = new Backbone.BootstrapModal({content: View}).open()
