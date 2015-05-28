require 'rails_helper'

RSpec.describe "conditions/new", type: :view do
  before(:each) do
    assign(:condition, Condition.new(
      :condition_name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new condition form" do
    render

    assert_select "form[action=?][method=?]", conditions_path, "post" do

      assert_select "input#condition_condition_name[name=?]", "condition[condition_name]"

      assert_select "input#condition_description[name=?]", "condition[description]"
    end
  end
end
