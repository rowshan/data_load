require 'rails_helper'

RSpec.describe "teams/edit", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :user_id => 1,
      :manager_id => 1
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(@team), "post" do

      assert_select "input#team_user_id[name=?]", "team[user_id]"

      assert_select "input#team_manager_id[name=?]", "team[manager_id]"
    end
  end
end
