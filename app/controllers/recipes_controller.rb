class RecipesController < ApplicationController
  def index
    @recipes = if params[:keywords]
                Recipe.where('lower(name) like ?', "%#{params[:keywords].downcase}%")
              else
                []
              end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
