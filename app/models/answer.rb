class Answer < ActiveRecord::Base
  has_many :possibilities
  has_many :responses

  validates :text, :presence => true
end
