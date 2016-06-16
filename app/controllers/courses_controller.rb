class CoursesController < ApplicationController
  def index
    @search_word = params[:looking_for] || 'jhu'
    @courses = Coursera.for(@search_term)
  end
end
