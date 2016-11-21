require 'rails_helper'

RSpec.describe "managers/index", type: :view do
  before(:each) do
    assign(:managers, [
      Manager.create!(
        :name => "Name",
        :team_id => 2,
        :user_id => 3
      ),
      Manager.create!(
        :name => "Name",
        :team_id => 2,
        :user_id => 3
      )
    ])
  end

  it "renders a list of managers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
