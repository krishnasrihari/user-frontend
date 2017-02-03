import { moduleForModel, test } from 'ember-qunit';
import Ember from 'ember';

moduleForModel('user', 'Unit | Model | user', {
    // Specify the other units that are required for this test.
    needs: ['model:friendship', 'model:friend']
});

test('should own a friendships', function(assert) {
    const User = this.store().modelFor('user');
    const relationship = Ember.get(User, 'relationshipsByName').get('friendships');

    assert.equal(relationship.key, 'friendships', 'has relationship with friendships');
    assert.equal(relationship.kind, 'hasMany', 'kind of relationship is hasMany');
});

test('should own a friends', function(assert) {
    const User = this.store().modelFor('user');
    const relationship = Ember.get(User, 'relationshipsByName').get('friends');

    assert.equal(relationship.key, 'friends', 'has relationship with friends');
    assert.equal(relationship.kind, 'hasMany', 'kind of relationship is hasMany');
});
