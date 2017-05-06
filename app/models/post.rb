class Post < ApplicationRecord
  belongs_to :user

  validates_uniqueness_of :email, :username
  validates_presence_of :email, :fname, :lname, :password, :username
  validates_length_of :password, in: 8..20
  validates_confirmation_of :password
end
