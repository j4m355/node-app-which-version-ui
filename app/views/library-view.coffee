template = require 'views/templates/library'
View = require 'views/base/view'

{ApplicationCollection} = require '../collections/application-collection'
ApplicationItemView = require './applicationitem-view'

module.exports = class LibraryView extends View
    autoRender: yes
    className: 'home-page'
    container: '#page-container'
    template: template

    initialize: ()->
        super
        @applicationList = new ApplicationCollection()
        @applicationList.fetch(
            success:()=>
                #console.log JSON.stringify(@applicationList)
                #console.log @applicationList.length
                @applicationList.each((item)->
                    return new ApplicationItemView({model: item})
                    ))
        

    render:()->
        super
        #$("a").tooltip()


