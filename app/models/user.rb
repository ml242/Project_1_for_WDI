class User < ActiveRecord::Base
  has_many :ascends, :through => :climbs
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  validates :email, :password, :password_confirmation, :presence => true
  validates :email, :uniqueness => true
  validates :password, :password_confirmation, :length => { in: 6..20 }
end