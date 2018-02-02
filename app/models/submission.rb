class Submission < ApplicationRecord
  enum status: [:received, :under_review, :queued, :published]
end
