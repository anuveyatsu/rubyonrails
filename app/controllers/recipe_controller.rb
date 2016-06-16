class RecipeController < ApplicationController
  def index
    @search_word = params[:looking_for] || 'chocolate'
    @recipe = Recipe.for(@search_word)
  end
end
