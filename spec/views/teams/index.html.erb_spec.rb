require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        :user_id => 2,
        :manager_id => 3
      ),
      Team.create!(
        :user_id => 2,
        :manager_id => 3
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
