class User < ActiveRecord::Base

# belongs_to: ?

validates :firstname, :presence => true
validates :lastname, :presence => true
validates :email, :presence => true
validates :email, :uniqueness => true

end
