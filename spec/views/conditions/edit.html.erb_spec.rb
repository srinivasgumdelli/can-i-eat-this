require 'rails_helper'

RSpec.describe "conditions/edit", type: :view do
  before(:each) do
    @condition = assign(:condition, Condition.create!(
      :condition_name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit condition form" do
    render

    assert_select "form[action=?][method=?]", condition_path(@condition), "post" do

      assert_select "input#condition_condition_name[name=?]", "condition[condition_name]"

      assert_select "input#condition_description[name=?]", "condition[description]"
    end
  end
end
