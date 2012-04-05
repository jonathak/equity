require 'spec_helper'

describe "possessions/index.html.erb" do
  before(:each) do
    assign(:possessions, [
      stub_model(Possession,
        :composite_id => 1,
        :component_id => 1
      ),
      stub_model(Possession,
        :composite_id => 1,
        :component_id => 1
      )
    ])
  end

  it "renders a list of possessions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
