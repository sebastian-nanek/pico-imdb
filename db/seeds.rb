require 'faker'

Movie.transaction do

  titles = ["2001: A Space Odyssey", "Walk the Line", "Anatomy of a Murder", "Beverly Hills Cop II", "Lock, Stock and Two Smoking Barrels", "Match Point", "The Lord of the Rings: The Two Towers", "Groundhog Day", "Sin City", "Inspector Gadget", "Batman Forever", "Ed Wood", "The Blues Brothers", "Psycho", "D.E.B.S.", "Monsters, Inc.", ]

  movies = []
  titles.each do |t|
    movies << Movie.create!(title: t, description: Faker::Lorem.paragraph, catch_phrase: Faker::Movie.quote)
  end

  actors = 50.times.map { Actor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, nationality: Faker::WorldCup.team) }

  movies.each do |m|
    base = 2 + rand( 6 )

    rand(42).times do
      m.movie_rates.create!(rate: base + rand(2) % 10)
    end

    m.actors = actors.sample(rand(4)+2)
    m.save
  end

end
