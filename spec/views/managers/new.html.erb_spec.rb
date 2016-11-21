require 'rails_helper'

RSpec.describe "managers/new", type: :view do
  before(:each) do
    assign(:manager, Manager.new(
      :name => "MyString",
      :team_id => 1,
      :user_id => 1
    ))
  end

  it "renders new manager form" do
    render

    assert_select "form[action=?][method=?]", managers_path, "post" do

      assert_select "input#manager_name[name=?]", "manager[name]"

      assert_select "input#manager_team_id[name=?]", "manager[team_id]"

      assert_select "input#manager_user_id[name=?]", "manager[user_id]"
    end
  end
end
