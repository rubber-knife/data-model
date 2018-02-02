class Submission < ApplicationRecord
  enum status: [:received, :under_review, :queued, :published]

  has_many :meta
  has_many :users, through: :meta

  has_many :media
end
