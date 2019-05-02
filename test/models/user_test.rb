require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test ":username must be unique" do
    new_user = User.new(username: "new name")
    assert new_user.valid?

    new_user.username = @user.username
    refute new_user.valid?
  end
end
