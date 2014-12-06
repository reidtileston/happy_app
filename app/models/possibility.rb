class Possibility < ActiveRecord::Base
  has_many: answers
  belongs_to: user

  validates :answer_id, :presence => true
end
