class Movie < ApplicationRecord
  has_many :actor_movies
  has_many :actors, through: :actor_movies

  has_many :movie_rates

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 8 }

  def average_rate
    movie_rates.average('rate')
  end

  def actor_names
    actors.map { |x| [x.first_name, x.last_name].join(' ')}.join(', ')
  end
end
