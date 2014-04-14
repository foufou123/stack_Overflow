class Response < ActiveRecord::Base
  validates :response, :presence => true

  has_many :users, through: :votes
  has_many :votes
  belongs_to :question
end
