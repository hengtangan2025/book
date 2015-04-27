class User < ActiveRecord::Base
   before_save { self.email = email.downcase }
  validates :name, presence: true
  validates :email, presence: true,  uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_secure_password
end
