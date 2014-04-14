class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :votes

  has_secure_password
  # validates :password_confirmation, :presence => true
  validates :name, :presence => true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, :presence => true, :uniqueness => true

  validates :email,
            :presence => true,
            :uniqueness => { case_sensitive: false },
            :format => { with: VALID_EMAIL_REGEX }
  validates :password, :presence => true
  validates :password_digest, :presence => true

end
