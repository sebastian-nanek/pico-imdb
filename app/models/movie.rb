class Movie < ApplicationRecord
  has_many :actor_movies
  has_many :actors, through: :actor_movies

  has_many :movie_rates

  def average_rate
    movie_rates.average('rate')
  end

  def actor_names
    actors.map { |x| [x.first_name, x.last_name].join(' ')}.join(', ')
  end
end
