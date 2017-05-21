# == Schema Information
#
# Table name: contacts_pages
#
#  id         :integer          not null, primary key
#  phone      :integer
#  email      :string
#  location   :string
#  work_time  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cms::ContactsPage < Cms::StaticPage
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image
end
