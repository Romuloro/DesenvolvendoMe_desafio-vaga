require 'rails_helper'

RSpec.describe "assembly_parts/edit", type: :view do
  before(:each) do
    @assembly_part = assign(:assembly_part, AssemblyPart.create!(
      assembly: nil,
      part: nil
    ))
  end

  it "renders the edit assembly_part form" do
    render

    assert_select "form[action=?][method=?]", assembly_part_path(@assembly_part), "post" do

      assert_select "input[name=?]", "assembly_part[assembly_id]"

      assert_select "input[name=?]", "assembly_part[part_id]"
    end
  end
end
