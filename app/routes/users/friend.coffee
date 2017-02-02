`import Ember from 'ember'`

UsersNewRoute = Ember.Route.extend
	model: (params) ->
		friend = @store.createRecord('user')
		user = @store.findRecord('user', params.user_id)
		Ember.RSVP.hash			
			friend: friend
			user: user
			friendship: @store.createRecord('friendship', {userId: user.id, friendId: friend.id})


`export default UsersNewRoute`