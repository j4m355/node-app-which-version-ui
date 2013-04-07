Model = require 'controllers/base/model'


module.exports = class ApplicationModel extends Model
	validate: (attribs)->
		if attribs.name is undefined
			return "Application name missing"