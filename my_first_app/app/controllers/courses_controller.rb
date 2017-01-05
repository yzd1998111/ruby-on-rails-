class CoursesController < ApplicationController
  def index    
    @search_term = params[:looking_for]
    if Coursera.for(@search_term)==nil 
     @courses= Coursera.for("jhu")
    else @courses= Coursera.for(@search_term)
    end

    end
end