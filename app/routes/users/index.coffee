`import Ember from 'ember'`

UsersIndexRoute = Ember.Route.extend 
	model: -> @store.findAll('user')

`export default UsersIndexRoute `