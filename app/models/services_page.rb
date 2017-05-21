class ServicesPage < ApplicationRecord
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image

  has_many :services, as: :serviceable
  accepts_nested_attributes_for :services

  def self.load
    first || create
  end
end
