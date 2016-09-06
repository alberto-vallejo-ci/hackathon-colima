class Challenge < ActiveRecord::Base
  #-------------------
  # ASSOCIATIONS
  #-------------------
  belongs_to :category
  delegate :name, :icon, to: :category, prefix: true

  # ----------------
  # VALIDATIONS
  # ----------------
  validates :title, :owner_name, :owner_email, :description, presence: true
end
