# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string
#  fname                  :string
#  lname                  :string
#  role                   :integer          default("1")
#

class User < ApplicationRecord
  ROLES = %i[banned user moderator admin].freeze

  has_many :posts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: ROLES

  validates_presence_of :email, :password
  validates_length_of :password, in: 6..20
  validates_uniqueness_of :email, :username, allow_blank: true

  def display_name
    fname && lname ? "#{fname} #{lname}" : email
  end
end
