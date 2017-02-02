`import Ember from 'ember'`

UsersShowRoute = Ember.Route.extend
	model: (params) -> @store.findRecord('user', params.user_id)


`export default UsersShowRoute`