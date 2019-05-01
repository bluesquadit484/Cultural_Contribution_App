class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :star_id
      t.string :fname
      t.string :lname
      t.datetime :dob
      t.string :role
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
