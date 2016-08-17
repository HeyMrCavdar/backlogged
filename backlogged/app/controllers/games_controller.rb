class GamesController < ApplicationController

	def index
		@games = Game.all
	end

	def show
		@game = Game.find(params[:id])
	end

	def new
	end

	def edit
	end

	def create
		@game = Game.new(game_params)

		@game.save
		redirect_to @game
	end

	def update
	end

	def destroy
	end

	private
	def game_params
		params.require(:game).permit(:title, :platform, :genre, :release_date)
	end

end
