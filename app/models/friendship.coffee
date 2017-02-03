`import DS from 'ember-data'`

Friendship = DS.Model.extend
	userId: DS.attr 'string'
	friendId: DS.attr 'string'

	user: DS.belongsTo('user', {inverse: 'friendships'})
	friend: DS.belongsTo('friend')

`export default Friendship`