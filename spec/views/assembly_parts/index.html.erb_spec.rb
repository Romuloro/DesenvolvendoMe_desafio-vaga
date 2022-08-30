require 'rails_helper'

RSpec.describe "assembly_parts/index", type: :view do
  before(:each) do
    assign(:assembly_parts, [
      AssemblyPart.create!(
        assembly: nil,
        part: nil
      ),
      AssemblyPart.create!(
        assembly: nil,
        part: nil
      )
    ])
  end

  it "renders a list of assembly_parts" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
