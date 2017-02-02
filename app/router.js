import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
    location: config.locationType,
});

Router.map(function() {
    this.route('users', function() {
        this.route('index', { path: '/' });
        this.route('show', { path: ':user_id/' });
        this.route('edit', { path: ':user_id/edit' });
        this.route('new');
        this.route('friend', { path: ':user_id/friend' });
    });
});

export default Router;
