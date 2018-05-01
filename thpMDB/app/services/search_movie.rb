require 'dotenv'


#pour rechercher par film
# TMDb::Movie.search('Forrest')
# The available attributes are: id, adult, backdrop_path, belongs_to_collection, budget, genres, homepage, imdb_id, original_title, overview, popularity, poster_path, production_companies, runtime, production_countries, release_date, revenue, spoken_languages, status, tagline, title, vote_average, vote_count. =end

class SearchMovie

attr_reader :second_step
attr_reader :third_step
    def initialize(params)
        Dotenv.load
		Tmdb::Api.key(ENV['API_IMDB'])
		Tmdb::Api.language("en")
		@second_step = params[:search]
    end

    def perform()
    	search_movie()
	end

	def search_movie()
		@third_step = Tmdb::Search.movie(@second_step)
				# redirect_to movies_search_path
	end


#prend un string en paramètres
# renvoie une array qui contient des movies
end


