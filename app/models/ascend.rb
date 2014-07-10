class Ascend < ActiveRecord::Base
  attr_accessible :name, :face_location, :description, :is_dangerous, :grade, :comments, :crag_id, :base_image
  has_attached_file :base_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # has_attached_file :crag_edited_image_file_name, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :base_image, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  has_many :climbs
  has_many :users, :through => :climbs
  belongs_to :crag
end