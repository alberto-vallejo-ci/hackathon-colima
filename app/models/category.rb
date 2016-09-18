class Category < ActiveRecord::Base
  has_many :challenges
  has_many :mentors
end
