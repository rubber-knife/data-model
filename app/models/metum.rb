class Metum < ApplicationRecord
  enum evaluation: [:no, :unsure, :yes]

  belongs_to :user
  belongs_to :submission
end
