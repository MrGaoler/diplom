# == Schema Information
#
# Table name: cards
#
#  id          :integer          not null, primary key
#  card_type   :integer
#  name        :string
#  description :text
#  schedule    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Card < ApplicationRecord
end
