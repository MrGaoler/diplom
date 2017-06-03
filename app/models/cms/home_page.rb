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

class Cms::HomePage < Cms::StaticPage
  add_field :description

  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image

  def members_with_image # public
    Member.with_image
  end

end
