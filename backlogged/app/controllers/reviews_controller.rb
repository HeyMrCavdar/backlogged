class ReviewsController < ApplicationController

	def index
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		@game = Game.find(params[:game_id])
		@review = @game.reviews.create(review_params)
		redirect_to game_path(@game)
	end

	def update
	end

	def destroy
	end

	private
		def review_params
			params.require(:review).permit(:review_source, :review_score)
		end
end
