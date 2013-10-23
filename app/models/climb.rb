# == Schema Information
#
# Table name: climbs
#
#  id         :integer          not null, primary key
#  histories  :text
#  stars      :integer
#  user_id    :integer
#  ascend_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Climb < ActiveRecord::Base
  attr_accessible :description, :stars, :user_id, :ascend_id
  belongs_to :user
  belongs_to :ascend
end
