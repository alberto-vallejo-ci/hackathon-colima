class Category < ActiveRecord::Base
  #-------------------
  # ASSOCIATIONS
  #-------------------
  has_many :challenges
end
