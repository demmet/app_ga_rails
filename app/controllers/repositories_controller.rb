class RepositoriesController < ApplicationController

	def index

		@language = Language.where(name: params[:language]).take

	end

	def details

		@repository = Repository.find(params[:id])

	end


end
