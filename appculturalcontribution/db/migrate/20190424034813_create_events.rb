class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :location
      t.string :start_time
      t.integer :total_hrs
      t.integer :spots
      t.string :description
      t.timestamps null: false
    end
  end
end
