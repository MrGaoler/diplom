# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string
#  level       :string
#  duration    :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Service < ApplicationRecord
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image

  validates_presence_of :name, :level, :description
end
