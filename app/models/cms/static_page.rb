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

class Cms::StaticPage < ActiveRecord::Base
  delegate :field_names, :fields, to: :class
  before_create :set_default_value

  class << self
    def load
      first || create!
    end

    def has_fields(fields = [])
      fields.each do |field|
        has_field(field)
      end
    end

    def has_field(field_name, options = {})
      @fields ||= {}
      @fields[field_name] = options

      class_eval do
        define_method "#{field_name}=" do |value|
          data[field_name.to_s] = value
        end

        define_method field_name do
          read_field field_name
        end
      end
    end

    def fields
      @fields ||= {}
    end

    def field_names
      fields.keys
    end
  end

  protected

  def set_default_value
    data = {}
    field_names.each do |name|
      data[name] = ''
    end
    self.data = data
  end

  def read_field(field_name)
    data[field_name.to_s]
  end
end
