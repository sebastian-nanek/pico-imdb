require Rails.root.join('lib', 'catch_phrase_api_client')

class CreateMovieService
  attr_accessor :movie_attributes

  def initialize(movie_attributes)
    @movie_attributes = movie_attributes
  end

  def call
    @movie = Movie.new(movie_attributes)
    @movie.keywords = @movie.description.split(' ').sample(3).join(', ')
    @movie.catch_phrase = CatchPhraseApiClient.new(@movie.title).call
    @movie.save!
    @movie
  end
end
