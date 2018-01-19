class RepositoriesController < ApplicationController
  def index

  end

  def show
  	@repository = Repository.find(params[:id])
  end
end
