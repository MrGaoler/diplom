# == Schema Information
#
# Table name: cms_static_pages
#
#  id         :integer          not null, primary key
#  type       :string
#  data       :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cms::AboutPage < Cms::StaticPage
  add_field :description
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image

  has_many :members, as: :memberable
  accepts_nested_attributes_for :members

  has_many :services, as: :serviceable
  accepts_nested_attributes_for :services
end
