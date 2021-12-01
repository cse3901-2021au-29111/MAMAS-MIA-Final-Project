class User < ApplicationRecord
  attr_accessor :email, :first_name, :last_name, :password
  before_save { self.email = email.downcase }
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }

  EMAIL_FORMAT = URI::MailTo::EMAIL_REGEXP
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: EMAIL_FORMAT },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true

end
