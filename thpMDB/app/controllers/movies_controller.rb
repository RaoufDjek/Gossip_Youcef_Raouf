class MoviesController < ApplicationController
  

  def search
	@third_step = SearchMovie.new(params).perform.results
  end


end