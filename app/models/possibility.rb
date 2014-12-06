class Possibility < ActiveRecord::Base
  belongs_to :answer
  belongs_to :link


  validates :answer_id, :presence => true
end
