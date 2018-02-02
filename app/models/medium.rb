class Medium < ApplicationRecord
  enum kind: [:prose, :poetry, :visual_art]

  belongs_to :submission
end
