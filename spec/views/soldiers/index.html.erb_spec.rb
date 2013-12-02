require 'spec_helper'

describe "soldiers/index" do
  before(:each) do
    assign(:soldiers, [
      stub_model(Soldier,
        :name => "Name",
        :life_points => 1
      ),
      stub_model(Soldier,
        :name => "Name",
        :life_points => 1
      )
    ])
  end

  it "renders a list of soldiers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
