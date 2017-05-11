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

class ContactsPage < ApplicationRecord
  has_many :image, as: :imageable
end
