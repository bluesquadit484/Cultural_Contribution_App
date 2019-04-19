# Seed the CUlturalContribution DB with some events.
more_events = [
  {:event_id => '1', :location => 'CSU', :date => '1-sep-2019', 
    :total_hours => '3', :semester => 'Fall 2019', :number_of_spots => '3',
    :description =>'Event starts at 3:00 pm and ends at 6:00 pm'},
   {:event_id => '2', :location => 'Sibley Park', :date => '3-oct-2019', 
    :total_hours => '5', :semester => 'Fall 2019', :number_of_spots => '6',
    :description =>'Event starts at 10:00 am and ends at 3:00 pm'},
      {:event_id => '3', :location => 'Wissink Hall', :date => '6-oct-2019', 
    :total_hours => '2', :semester => 'Fall 2019', :number_of_spots => '5',
    :description =>'Event starts at 2:00 pm and ends at 4:00 pm'}
]

more_events.each do |event|
  Event.create!(event)
end
