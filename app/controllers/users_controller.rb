class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @borrowings = current_user.borrowings.where(returned: false)
  end
end
