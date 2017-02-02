`import Ember from 'ember'`

UsersEditRoute = Ember.Route.extend
	model: (params) -> @store.findRecord('user', params.user_id)

	deactivate: -> @get('controller.model').rollbackAttributes()

`export default UsersEditRoute`