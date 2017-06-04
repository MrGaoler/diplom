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

class Cms::ServicesPage < Cms::StaticPage
  add_fields %i[title description]
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image
end
