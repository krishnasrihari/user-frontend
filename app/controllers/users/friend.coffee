`import Ember from 'ember'`

UsersFriendController = Ember.Controller.extend
	actions:
		save: ->
			@get('model.friend').save().then =>
				friend = @get('model.friend')
				user = @get('model.user')
				fr = @get('model.friendship')
				fr.userId = user.id
				fr.friendId = friend.id
				fr.save()
				@transitionToRoute 'users.index'

		cancel: -> @transitionToRoute 'users.index'

`export default UsersFriendController`