class Link < ActiveRecord::Base
has_many :possibilities

validates :video, :presence => true

end
