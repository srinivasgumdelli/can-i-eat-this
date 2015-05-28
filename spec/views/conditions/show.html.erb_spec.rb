require 'rails_helper'

RSpec.describe "conditions/show", type: :view do
  before(:each) do
    @condition = assign(:condition, Condition.create!(
      :condition_name => "Condition Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Condition Name/)
    expect(rendered).to match(/Description/)
  end
end
