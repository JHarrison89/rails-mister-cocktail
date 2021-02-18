class DosesController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])

    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: 'Dose was successfully created.'
    else
      redirect_to cocktail_path(@cocktail), notice: 'Error'
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
