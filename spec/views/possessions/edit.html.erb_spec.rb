require 'spec_helper'

describe "possessions/edit.html.erb" do
  before(:each) do
    @possession = assign(:possession, stub_model(Possession,
      :composite_id => 1,
      :component_id => 1
    ))
  end

  it "renders the edit possession form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => possessions_path(@possession), :method => "post" do
      assert_select "input#possession_composite_id", :name => "possession[composite_id]"
      assert_select "input#possession_component_id", :name => "possession[component_id]"
    end
  end
end
