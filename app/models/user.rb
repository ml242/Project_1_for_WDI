# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  climber_name    :string(255)
#  avatar          :string(255)
#  description     :text
#  phone           :integer
#

class User < ActiveRecord::Base
  attr_accessible :name, :climber_name, :avatar, :description, :phone, :email, :password, :password_confirmation
  validates :email, :password, :password_confirmation, :presence => true
  validates :email, :uniqueness => true
  validates :password, :password_confirmation, :length => { in: 6..20 }
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  # validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png)
  has_many :climbs
  has_many :ascends, :through => :climbs
  has_secure_password
end
