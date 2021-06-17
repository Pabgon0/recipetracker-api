class RecipeClubsController < ApplicationController
  before_action :set_recipe_club, only: [:show, :update, :destroy]

  # GET /recipe_clubs
  def index
    @recipe_clubs = RecipeClub.all

    render json: @recipe_clubs
  end

  # GET /recipe_clubs/1
  def show
    render json: @recipe_club
  end

  # POST /recipe_clubs
  def create
    @recipe_club = RecipeClub.new(recipe_club_params)

    if @recipe_club.save
      render json: @recipe_club, status: :created, location: @recipe_club
    else
      render json: @recipe_club.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_club
      @recipe_club = RecipeClub.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_club_params
      params.require(:recipe_club).permit(:name)
    end
end
