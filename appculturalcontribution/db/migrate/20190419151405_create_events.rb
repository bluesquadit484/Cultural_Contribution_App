class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string 'event_id'
      t.string 'location'
      t.datetime 'date'
      t.string 'total_hours'
      t.string 'semester'
      t.string 'number_of_spots'
      t.text 'description'
      t.timestamps
      
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
    end
  end
end
