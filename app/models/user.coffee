`import DS from 'ember-data'`

User = DS.Model.extend
	firstName: DS.attr 'string'
	lastName: DS.attr 'string'
	email: DS.attr 'string'
	


`export default User`