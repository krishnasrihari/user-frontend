`import DS from 'ember-data'`

User = DS.Model.extend
	firstName: DS.attr 'string'
	lastName: DS.attr 'string'
	email: DS.attr 'string'

	friendships: DS.hasMany('friendship')
	friends: DS.hasMany('user')


`export default User`