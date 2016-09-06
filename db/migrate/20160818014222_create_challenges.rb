class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title, null: false
      t.string :owner_name, null: false
      t.string :owner_email, null: false
      t.string :owner_phone
      t.string :description
      t.string :description_how
      t.boolean :is_looking_for_team
      t.string :profile_requirements
      t.string :assets
      t.string :location

      t.timestamps
    end
  end
end
