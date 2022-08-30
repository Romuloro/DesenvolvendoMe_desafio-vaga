require 'rails_helper'

RSpec.describe "assembly_parts/show", type: :view do
  before(:each) do
    @assembly_part = assign(:assembly_part, AssemblyPart.create!(
      assembly: nil,
      part: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
