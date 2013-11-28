require 'spec_helper'

describe "soldiers/show" do
  before(:each) do
    @soldier = assign(:soldier, stub_model(Soldier,
      :atk_points => 1,
      :def_points => 2,
      :health => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
