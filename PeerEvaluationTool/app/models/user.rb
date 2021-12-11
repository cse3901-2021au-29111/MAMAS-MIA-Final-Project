# User input validation for sign-ups
class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }

  EMAIL_FORMAT = URI::MailTo::EMAIL_REGEXP
  validates :email, length: { maximum: 255 },
            format: { with: EMAIL_FORMAT },
            uniqueness: { case_sensitive: false }
  has_secure_password(options={validations:false})
  validates :password, presence: true, on: :create
  validates :user_grade, presence: false, length: {maximum: 2}
end
