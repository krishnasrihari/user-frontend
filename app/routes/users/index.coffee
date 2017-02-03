`import Ember from 'ember'`

UsersIndexRoute = Ember.Route.extend 
	model: -> @store.findAll('user')
	afterModel: (model) -> model.reload

`export default UsersIndexRoute `