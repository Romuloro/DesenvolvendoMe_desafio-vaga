require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      titulo: "Titulo",
      author: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(//)
  end
end
