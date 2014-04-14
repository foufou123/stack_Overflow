class User < ActiveRecord::Base
  validates :name, :presence => true
  validates :password, :presence => true
  has_secure_password

  has_many :questions
  has_many :responses, through: :votes
  has_many :votes
end
