class Service < ApplicationRecord
  has_many :images, as: :imageable
end
