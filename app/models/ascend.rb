

class Ascend < ActiveRecord::Base
  attr_accessible :name, :face_location, :description, :is_dangerous, :grade, :comments, :crag_id, :crag_base_image_file_name, :crag_edited_image_file_name
  has_attached_file :ascend_base_image_file_name, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :ascend_edited_image_file_name, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :ascend_base_image_file_name, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  # validates_attachment_content_type :ascend_edited_image_file_name, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  has_many :climbs
  has_many :users, :through => :climbs
  belongs_to :crag
end
