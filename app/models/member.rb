# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  position        :string
#  full_name       :string
#  social_links    :json
#  memberable_type :string
#  memberable_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Member < ApplicationRecord
  belongs_to :memberable, polymorphic: true

  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image

  before_save :set_image

  private

  def set_image
    build_image unless image.present?
  end
end
