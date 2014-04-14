class Question < ActiveRecord::Base
  validates :title, :presence => true
  validates :question, :presence => true

  belongs_to :user
  has_many :votes
  has_many :responses

end
