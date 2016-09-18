# == Schema Information
#
# Table name: categories
#
#  id   :integer          not null, primary key
#  name :string
#  icon :string
#

class Category < ActiveRecord::Base
  has_many :challenges
  has_many :mentors
end
