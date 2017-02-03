import { moduleForModel, test } from 'ember-qunit';
import Ember from 'ember';

moduleForModel('friendship', 'Unit | Model | friendship', {
    // Specify the other units that are required for this test.
    needs: ['model:user', 'model:friend']
});

test('should own a user', function(assert) {
    const User = this.store().modelFor('friendship');
    const relationship = Ember.get(User, 'relationshipsByName').get('user');

    assert.equal(relationship.key, 'user', 'has relationship with user');
    assert.equal(relationship.kind, 'belongsTo', 'kind of relationship is belongsTo');
});

test('should own a friend', function(assert) {
    const User = this.store().modelFor('friendship');
    const relationship = Ember.get(User, 'relationshipsByName').get('friend');

    assert.equal(relationship.key, 'friend', 'has relationship with friend');
    assert.equal(relationship.kind, 'belongsTo', 'kind of relationship is belongsTo');
});
