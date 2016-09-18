# == Schema Information
#
# Table name: challenges
#
#  id                   :integer          not null, primary key
#  title                :string           not null
#  description          :string           not null
#  created_at           :datetime
#  updated_at           :datetime
#  category_id          :integer
#  owner_name           :string
#  owner_email          :string
#  owner_phone          :string
#  description_how      :text
#  profile_requirements :string
#  is_looking_for_team  :boolean
#  location             :string
#  assets               :text
#

class Challenge < ActiveRecord::Base
  belongs_to :category
  delegate :name, :icon, to: :category, prefix: true

  validates :title, :owner_name, :owner_email, :description, presence: true
end
