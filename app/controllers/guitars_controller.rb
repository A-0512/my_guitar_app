class GuitarsController < ApplicationController

  def new
    @guitar = Guitar.new
  end

  def create
    @guitar = Guitar.create(guitar_params)
    @guitar.save
    if @guitar.save
      redirect_to root_url
    else
      render 'new'
    end

  end

  def edit
    @guitar = Guitar.find_by_id(params[:id])
    if @guitar
      render 'edit'
    else
      redirect_to root_url
    end
  end

  def update
    @guitar = Guitar.find_by_id(params[:id])
    @guitar.update_attributes(guitar_params)
    if @guitar.update_attributes(guitar_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end

  private

  def guitar_params
    params.require(:guitar).permit(:name, :g_model_id)
  end

end