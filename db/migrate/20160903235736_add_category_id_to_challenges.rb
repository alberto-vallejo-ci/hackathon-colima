class AddCategoryIdToChallenges < ActiveRecord::Migration
  def change
    add_reference :challenges, :category
  end
end
