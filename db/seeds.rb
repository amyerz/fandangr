# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'fandango'

times = ['10:45am', '11:45am', '12:15pm', '1:10pm', '2:15pm', '2:40pm', '3:35pm', '4:40pm', '5:05pm', '6:00pm', '7:05pm', '7:30pm', '8:25pm', '9:30pm', '9:55pm', '10:50pm']

movies = Fandango.movies_near(94555).first[:movies]

movies.each do |current_movie|
	movie = Movie.create({:name => current_movie[:title]})
	times.each do |current_time|
		showing = Showing.create({:time => current_time, :movie_id => movie.id})
		('A'..'G').each do |current_row|
			(1..10).each do |current_column|
				Ticket.create({:row => current_row, :column => current_column, :showing_id => showing.id})
			end
		end
	end

end


