class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.string :title
      t.string :first_name
      t.string :middle_names
      t.string :last_name

      t.timestamps
    end
  end
end
