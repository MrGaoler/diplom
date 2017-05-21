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

require 'rails_helper'

RSpec.describe Member, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
