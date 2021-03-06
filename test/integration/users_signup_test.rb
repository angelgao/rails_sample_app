require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "create new users with invalid info" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user:{
        name: "",
        email: "angel@invalid",
        password: "aaa",
        password_confirmation: "aaa"
      }
    end
    assert_template 'users/new'
  end
  
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name:  "Example User",
                                            email: "user@example.com",
                                            password:              "password",
                                            password_confirmation: "password" }
    end
    assert_template 'users/show'
  end
  
end
