# == Schema Information
#
# Table name: ascends
#
#  id                      :integer          not null, primary key
#  name                    :string(255)
#  face_location           :string(255)
#  description             :text
#  is_dangerous            :boolean
#  grade                   :string(255)
#  comments                :text
#  crag_id                 :integer
#  base_image_file_name    :string(255)
#  base_image_content_type :string(255)
#  base_image_file_size    :integer
#  base_image_updated_at   :datetime
#

class Ascend < ActiveRecord::Base
  attr_accessible :name, :face_location, :description, :is_dangerous, :grade, :comments, :crag_id, :base_image, :ascend_edited_image
  has_attached_file :base_image, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # has_attached_file :ascend_edited_image_file_name, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :base_image, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  # validates_attachment_content_type :ascend_edited_image, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  has_many :climbs
  has_many :users, :through => :climbs
  belongs_to :crag
end
