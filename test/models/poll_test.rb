# frozen_string_literal: true

require 'test_helper'

class PollTest < ActiveSupport::TestCase
  test 'should not save poll without email and fb_id' do
    poll = Poll.new
    assert_not poll.save
  end

  test 'should not save poll with email and fb_id' do
    flame_path = FlamePath.first
    poll = Poll.new(
      email: 'toto.tutu@gmail.com',
      fb_id: '1234',
      flame_path_id: flame_path.id
    )
    assert_not poll.save
  end

  test 'should not save poll with a not email value' do
    flame_path = FlamePath.first
    poll = Poll.new(email: 'tototutu', flame_path_id: flame_path.id)
    assert_not poll.save
  end
end
