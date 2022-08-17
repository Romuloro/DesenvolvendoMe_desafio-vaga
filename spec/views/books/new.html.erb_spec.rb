require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      titulo: "MyString",
      author: nil
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[titulo]"

      assert_select "input[name=?]", "book[author_id]"
    end
  end
end
