# == Schema Information
#
# Table name: team_pages
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TeamPage < ApplicationRecord
  has_many :image, as: :imageable
end
