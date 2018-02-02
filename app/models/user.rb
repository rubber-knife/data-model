class User < ApplicationRecord
  enum role: [:submitter, :editor, :admin, :sysop]

  has_many :meta
  has_many :submissions, through: :meta

  has_secure_password validations: false

  def authenticate!(password)
    BCrypt::Password.new(self.password_digest) == password
  end
end
