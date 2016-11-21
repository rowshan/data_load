require 'rails_helper'

RSpec.describe "managers/edit", type: :view do
  before(:each) do
    @manager = assign(:manager, Manager.create!(
      :name => "MyString",
      :team_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit manager form" do
    render

    assert_select "form[action=?][method=?]", manager_path(@manager), "post" do

      assert_select "input#manager_name[name=?]", "manager[name]"

      assert_select "input#manager_team_id[name=?]", "manager[team_id]"

      assert_select "input#manager_user_id[name=?]", "manager[user_id]"
    end
  end
end
