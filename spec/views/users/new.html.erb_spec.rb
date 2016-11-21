require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :id => "",
      :name => "",
      :user_email => "",
      :team_id => 1
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_id[name=?]", "user[id]"

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_user_email[name=?]", "user[user_email]"

      assert_select "input#user_team_id[name=?]", "user[team_id]"
    end
  end
end
