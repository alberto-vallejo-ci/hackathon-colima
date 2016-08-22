class Challenge < ActiveRecord::Base
  # ----------------
  # Validations
  # ----------------
  validates :name, :description, presence: true
end
