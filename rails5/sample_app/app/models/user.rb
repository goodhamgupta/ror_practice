class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
  validates :email, presence: true, length: {maximum: 255}, 
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: true}
  # Implementing secure password for each user
  # Virtual fields password and passsword_confirmation added.
  # Forces validation on the above attributes automatically.
  has_secure_password
end