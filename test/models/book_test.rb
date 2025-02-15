require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "should not save book without title" do
    book = Book.new(author: "Author", isbn: "12345")
    assert_not book.save, "Saved the book without a title"
  end
end
