require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  before(:each) do
    assign(:schedule, Schedule.new(
      :title => "MyString",
      :address => "MyString",
      :details => "MyText"
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input[name=?]", "schedule[title]"

      assert_select "input[name=?]", "schedule[address]"

      assert_select "textarea[name=?]", "schedule[details]"
    end
  end
end
