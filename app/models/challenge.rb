class Challenge < ActiveRecord::Base
  #-------------------
  # ASSOCIATIONS
  #-------------------
  belongs_to :category
  delegate :name, :icon, to: :category, prefix: true

  # ----------------
  # VALIDATIONS
  # ----------------
  validates :name, :description, :owner, :email, :target, :description, :implementation,
            presence: true
end
