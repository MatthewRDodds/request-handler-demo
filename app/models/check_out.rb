class CheckOut < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates :user_id, :book_id, presence: true

  validates_associated :book
  validates_associated :user
end
