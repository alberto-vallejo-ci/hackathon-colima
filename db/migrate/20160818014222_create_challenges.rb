class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name, null: false
      t.string :owner, null: false
      t.string :email, null: false
      t.string :telephone
      t.string :profiles
      t.text   :target, null: false
      t.text   :planning
      t.text   :description, null: false
      t.boolean :implementation, null: false, default: true

      t.timestamps
    end
  end
end
