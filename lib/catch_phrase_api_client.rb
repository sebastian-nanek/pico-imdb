require 'faker'

class CatchPhraseApiClient
  def initialize(_title);  end

  def call
    Faker::Movie.quote
  end
end
