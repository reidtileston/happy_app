class Link < ActiveRecord::Base
has_many :possibilities

validates :link, :presence => true

end
