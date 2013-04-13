template = require 'views/templates/elements/applicationTableItem'
View = require 'views/base/view'

module.exports = class ApplicationItemView extends View
    autoRender: yes
    container: '#applicationTableBody'
    template: template
    tagName: 'tr'

    initialize: ()->
        super
    
    render:() ->
        super

