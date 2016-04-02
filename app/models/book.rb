class Book < ActiveRecord::Base
  validates :name, :author, presence: true
end
