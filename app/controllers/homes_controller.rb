class HomesController < ApplicationController
	def index
	end

	def main
		@users = User.all
	end
end
