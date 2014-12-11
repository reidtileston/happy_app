class User < ActiveRecord::Base
has_many :responses

validates :firstname, :presence => true
validates :lastname, :presence => true
validates :email, :presence => true
validates :email, :uniqueness => true

end
