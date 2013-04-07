Application = require '../models/application-model'
Collection = require '../models/base/collection'


class exports.ApplicationCollection extends Collection
  model: Application
  url: '/api/applications'