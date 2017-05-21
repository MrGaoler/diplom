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

  has_many :members, as: :memberable
  accepts_nested_attributes_for :members

  def self.load
    first || create
  end
end
