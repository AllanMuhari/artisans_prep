class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:show, :borrow]
  before_action :set_book, only: [:show, :borrow]

  def index
    @books = Book.all
  end

  def show; end

  def borrow
    if @book.available?
      current_user.borrowings.create!(book: @book)
      redirect_to user_profile_path, notice: "Book borrowed successfully."
    else
      redirect_to @book, alert: "This book is already borrowed."
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
