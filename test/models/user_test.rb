# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should not save user with an already email' do
    user = User.new(
      email: 'root@gmail.com',
      name: 'root',
    )
    assert_not user.save
  end
end
