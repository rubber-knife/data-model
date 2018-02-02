class Image < ApplicationRecord
  dragonfly_accessor :upload

  belongs_to :medium
end
