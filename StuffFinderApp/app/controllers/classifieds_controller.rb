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

  def create
    @classified = Classified.new classified_params

    if @classified.save
      redirect_to @classified
    else
      render 'new'
    end
  end

  private
    def classified_params
      params.require(:classified).permit(:title, :description, :price, :category_id)
    end
end
