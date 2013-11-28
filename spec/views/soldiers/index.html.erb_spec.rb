require 'spec_helper'

describe "soldiers/index" do
  before(:each) do
    assign(:soldiers, [
      stub_model(Soldier,
        :atk_points => 1,
        :def_points => 2,
        :health => 3
      ),
      stub_model(Soldier,
        :atk_points => 1,
        :def_points => 2,
        :health => 3
      )
    ])
  end

  it "renders a list of soldiers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
