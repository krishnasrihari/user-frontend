`import DS from 'ember-data'`
`import JSONAPIAdapter from 'ember-data/adapters/json-api'`
`import ENV from 'user-frontend/config/environment'`
 
AppAdapter = DS.JSONAPIAdapter.extend
	host: ENV.apiHost

`export default AppAdapter`