class Link < ActiveRecord::Base
has_many: videos
belongs_to: possibility
belongs_to: user

end
