class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: {maximum: 50}
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  # Implementing secure password for each user
  # Virtual fields password and passsword_confirmation added.
  # Forces validation on the above attributes automatically.
  has_secure_password

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
end
