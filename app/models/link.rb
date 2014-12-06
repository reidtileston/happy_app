class Video < ActiveRecord::Base
belongs_to: possibility
belongs_to: user

validates :link, :presence => true

end
