require 'spec_helper'

describe "soldiers/new" do
  before(:each) do
    assign(:soldier, stub_model(Soldier,
      :name => "MyString",
      :life_points => 1
    ).as_new_record)
  end

  it "renders new soldier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", soldiers_path, "post" do
      assert_select "input#soldier_name[name=?]", "soldier[name]"
      assert_select "input#soldier_life_points[name=?]", "soldier[life_points]"
    end
  end
end
