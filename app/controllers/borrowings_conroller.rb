class BorrowingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @borrowings = current_user.borrowings.where(returned: false)
  end

  def return_book
    borrowing = current_user.borrowings.find(params[:id])
    borrowing.update(returned: true)
    redirect_to user_profile_path, notice: "Book returned successfully."
  end
end
