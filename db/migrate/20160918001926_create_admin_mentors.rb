class CreateAdminMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, index: true
      t.string :title
      t.text :experience
      t.integer :category_id, index: true

      t.timestamps null: false
    end
  end
end
