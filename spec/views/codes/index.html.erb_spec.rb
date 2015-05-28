require 'rails_helper'

RSpec.describe "codes/index", type: :view do
  before(:each) do
    assign(:codes, [
      Code.create!(
        :code => "Code",
        :description => "Description"
      ),
      Code.create!(
        :code => "Code",
        :description => "Description"
      )
    ])
  end

  it "renders a list of codes" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
