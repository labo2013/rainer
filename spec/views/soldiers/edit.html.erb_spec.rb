require 'spec_helper'

describe "soldiers/edit" do
  before(:each) do
    @soldier = assign(:soldier, stub_model(Soldier,
      :atk_points => 1,
      :def_points => 1,
      :health => 1
    ))
  end

  it "renders the edit soldier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", soldier_path(@soldier), "post" do
      assert_select "input#soldier_atk_points[name=?]", "soldier[atk_points]"
      assert_select "input#soldier_def_points[name=?]", "soldier[def_points]"
      assert_select "input#soldier_health[name=?]", "soldier[health]"
    end
  end
end
