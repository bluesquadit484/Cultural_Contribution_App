# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
semesters = Semester.create([{semester: 'Spring', year: '2019'}, {semester: 'Fall', year: '2019'}, {semester: 'Fall', year: '2020'}])
users = User.create([{star_id: 'we7839jh', fname: 'Harry', lname: 'Streets', dob: '1990-04-06', role: 's', email: 'harrystreets@gmail.com', password_digest: 'street123'}])
#users = User.create([{star_id: 'we7839jh', fname: 'Harry', lname: 'Streets', dob: '1990-04-06', role: 's', email: 'harrystreets@gmail.com', password: 'street123'}, {star_id: 'er3859gh', fname: 'Mark', lname: 'Smith', dob: '1987-01-02', role: 'a', email: 'smithee@gmail.com', password: 'admin'}, {star_id: 'xc8909wd', fname: 'Shirley', lname: 'Mistiq', dob: '1991-10-06', role: 's', email: 'missybooboo@gmail.com', password: 'mistiqyes'}, {star_id: 'nm28390io', fname: 'Frances', lname: 'Como', dob: '1967-04-06', role: 'a', email: 'comozoo2@gmail.com', password: 'zoolover'}, {star_id: 'as4534hm', fname: 'Dan', lname: 'Mann', dob: '1992-02-08', role: 's', email: 'danthemann@gmail.com', password: 'manny5'}])
events = Event.create([{date: '2019-04-23', location: 'ISA Office', start_time: '3PM', total_hrs: '3', spots: '3'}, {date: '2019-04-24', location: 'CSU Ballroom', start_time: '12PM', total_hrs: '2', spots: '4'}, {date: '2019-1-24', location: 'CSB 112', start_time: '10AM', total_hrs: '1', spots: '1'}])

 
#e1 = Event.find(1)
#u1 = User.find(1)
#u2 = User.find(2)
#e1.users << [u1, u2]