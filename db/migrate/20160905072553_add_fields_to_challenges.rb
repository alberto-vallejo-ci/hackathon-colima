class AddFieldsToChallenges < ActiveRecord::Migration
  def change
    rename_column :challenges, :name, :title
    add_column :challenges, :owner_name, :string
    add_column :challenges, :owner_email, :string
    add_column :challenges, :owner_phone, :string
    add_column :challenges, :description_how, :text
    add_column :challenges, :profile_requirements, :string
    add_column :challenges, :is_looking_for_team, :boolean
    add_column :challenges, :location, :string
  end
end
