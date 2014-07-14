class GModelsController < ApplicationController

  def index
     @models = GModel.all
  end

  def show
    @model = GModel.find_by_id(params[:id])
    if @model
      @guitars = @model.guitars.order('name ASC').page(params[:page])
      render 'show'
    else
      redirect_to '/404.html'
    end
  end

  def new
    @model = GModel.new
  end

  def create
    @model = GModel.create(model_params)
    @model.save
    if @model.save
      redirect_to root_url
    else
      render 'new'
    end

  end

  private

  def model_params
    params.require(:g_model).permit(:name)
  end

end