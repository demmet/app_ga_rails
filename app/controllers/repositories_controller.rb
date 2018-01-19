class RepositoriesController < ApplicationController

  def show
  	@repository = Repository.find_by(name: params[:id])
    if @repository.nil?
      @repository = Repository.find(params[:id])
    end
  end
end
