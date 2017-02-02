`import Ember from 'ember'`

UsersShowController = Ember.Controller.extend
	actions:
		delete: (model) ->
			model.destroyRecord().then =>
				@transitionToRoute 'users.index'

`export default UsersShowController`