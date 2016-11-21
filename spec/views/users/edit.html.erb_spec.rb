require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :id => "",
      :name => "",
      :user_email => "",
      :team_id => 1
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_id[name=?]", "user[id]"

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_user_email[name=?]", "user[user_email]"

      assert_select "input#user_team_id[name=?]", "user[team_id]"
    end
  end
end
