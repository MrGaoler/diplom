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
end
