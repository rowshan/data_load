class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users  do |t|
      t.string :name
      t.string :user_email
      t.integer :team_id

      t.timestamps
    end
  end
end
