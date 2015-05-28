require 'rails_helper'

RSpec.describe "codes/show", type: :view do
  before(:each) do
    @code = assign(:code, Code.create!(
      :code => "Code",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Description/)
  end
end
