require 'rails_helper'

RSpec.describe "teams/new", type: :view do
  before(:each) do
    assign(:team, Team.new(
      :user_id => 1,
      :manager_id => 1
    ))
  end

  it "renders new team form" do
    render

    assert_select "form[action=?][method=?]", teams_path, "post" do

      assert_select "input#team_user_id[name=?]", "team[user_id]"

      assert_select "input#team_manager_id[name=?]", "team[manager_id]"
    end
  end
end
