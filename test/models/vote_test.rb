# frozen_string_literal: true

require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test 'should not save vote without email and fb_id' do
    vote = Vote.new
    assert_not vote.save
  end

  test 'should not save vote with email and fb_id' do
    flame_path = FlamePath.first
    vote = Vote.new(
      email: 'toto.tutu@gmail.com',
      fb_id: '1234',
      flame_path_id: flame_path.id
    )
    assert_not vote.save
  end

  test 'should not save vote with a not email value' do
    flame_path = FlamePath.first
    vote = Vote.new(email: 'tototutu', flame_path_id: flame_path.id)
    assert_not vote.save
  end
end
