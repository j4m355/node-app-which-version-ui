Model = require './base/model'


module.exports = class ApplicationModel extends Model
	defaults:
		name: ""
		versions: [{versionName: String, versionPath: String, versionVerified: {type : Boolean, default: false }, versionDescription: {type : String, default: ""}, versionOperatingSystem: {type: String, default: "Windows"}}]
		description: ""

	validate: (attribs)->
		if attribs.name is ""
			return "Application name missing"
