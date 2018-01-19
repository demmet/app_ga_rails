class LanguagesController < ApplicationController

  def index

  end

  def show
		@language = Language.find_by(name: params[:id])
  end

end
