require 'spec_helper'

describe "soldiers/edit" do
  before(:each) do
    @soldier = assign(:soldier, stub_model(Soldier,
      :name => "MyString",
      :life_points => 1
    ))
  end

  it "renders the edit soldier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", soldier_path(@soldier), "post" do
      assert_select "input#soldier_name[name=?]", "soldier[name]"
      assert_select "input#soldier_life_points[name=?]", "soldier[life_points]"
    end
  end
end
