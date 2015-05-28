require 'rails_helper'

RSpec.describe "codes/new", type: :view do
  before(:each) do
    assign(:code, Code.new(
      :code => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new code form" do
    render

    assert_select "form[action=?][method=?]", codes_path, "post" do

      assert_select "input#code_code[name=?]", "code[code]"

      assert_select "input#code_description[name=?]", "code[description]"
    end
  end
end
