class SearchController < ApplicationController
  def search  
	if params[:q].nil?
    		@books = []
  	else
		puts "working here"
    		@books = Book.search params[:q]
  	end
  end
end
