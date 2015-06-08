class ClassifiedsController < ApplicationController

  def index
    @classifieds = Classified.all
  end

  def show
    @classified = Classified.find(params[:id])
  end

  def new
    @classified = Classified.new
  end

end
