require "json"
require "open-uri"

# Movie.delete_all

url = "https://tmdb.lewagon.com/movie/top_rated"
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)

user["results"].each do |result|
  Movie.create!(
    title: result['original_title'],
    overview: result['overview'],
    poster_url: result['poster_path'],
    rating: result['vote_average'])
end