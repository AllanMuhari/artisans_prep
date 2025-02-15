class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :due_date, presence: true

  before_create :set_due_date

  def set_due_date
    self.due_date = 2.weeks.from_now
  end
end
