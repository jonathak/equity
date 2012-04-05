require 'spec_helper'

describe "possessions/new.html.erb" do
  before(:each) do
    assign(:possession, stub_model(Possession,
      :composite_id => 1,
      :component_id => 1
    ).as_new_record)
  end

  it "renders new possession form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => possessions_path, :method => "post" do
      assert_select "input#possession_composite_id", :name => "possession[composite_id]"
      assert_select "input#possession_component_id", :name => "possession[component_id]"
    end
  end
end
