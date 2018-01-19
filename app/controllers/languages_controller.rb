class LanguagesController < ApplicationController

  def index
  	@language = Language.where(name: params[:language]).take
  end

end
