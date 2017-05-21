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
end
