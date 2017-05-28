# == Schema Information
#
# Table name: services
#
#  id               :integer          not null, primary key
#  name             :string
#  level            :string
#  duration         :integer
#  description      :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  serviceable_type :string
#  serviceable_id   :integer
#

class Service < ApplicationRecord
  belongs_to :serviceable, polymorphic: true # TODO: Check comment below
  # I think this relation is useless also.
  # When we create new service it should be available anywhere and
  # there is no individual services for different pages(you can use example from members)

  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image

  validates_presence_of :name, :level, :description
end
