require 'rails_helper'

RSpec.describe "conditions/index", type: :view do
  before(:each) do
    assign(:conditions, [
      Condition.create!(
        :condition_name => "Condition Name",
        :description => "Description"
      ),
      Condition.create!(
        :condition_name => "Condition Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of conditions" do
    render
    assert_select "tr>td", :text => "Condition Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
