`import DS from 'ember-data'`

Friendship = DS.Model.extend
	userId: DS.attr 'string'
	friendId: DS.attr 'string'

`export default Friendship`