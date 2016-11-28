require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
    @admin = Role.find_by(name: "Admin")
    @member = Role.find_by(name: "Member")
  end

  test 'assign role' do
    @user.role = nil
    @user.assign_role
    assert @user.member?
  end

  test 'check role admin' do
    @user.role = @admin
    assert @user.admin?
  end

  test 'check role member' do
    @user.role = @member
    assert @user.member?
  end

end
