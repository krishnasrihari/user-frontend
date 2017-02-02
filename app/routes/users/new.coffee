`import Ember from 'ember'`

UsersNewRoute = Ember.Route.extend
	model: -> @store.createRecord('user')


`export default UsersNewRoute`