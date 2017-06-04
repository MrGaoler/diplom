# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  file           :string
#  imageable_type :string
#  imageable_id   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true, optional: true

  mount_uploader :file, ImageUploader
  scope :from_posts, (->() { where("imageable_type = 'Post' AND file is not null") })
end
