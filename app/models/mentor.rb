# == Schema Information
#
# Table name: mentors
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  email       :string
#  title       :string
#  experience  :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_mentors_on_category_id  (category_id)
#  index_mentors_on_email        (email)
#

class Mentor < ActiveRecord::Base
  belongs_to :category
end
