class Book < ApplicationRecord
  belongs_to :user
  enum status: [:unstarted, :started, :finished]
end
