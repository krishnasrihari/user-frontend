`import Ember from 'ember'`
`import DS from 'ember-data'`

AppSerializer = DS.JSONAPISerializer.extend
	keyForAttribute: (attr) ->
		Ember.String.underscore(attr)

	keyForRelationship: (rawKey) ->
		Ember.String.underscore(rawKey)

`export default AppSerializer`