class User < ApplicationRecord
  has_many :books, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :books
end
