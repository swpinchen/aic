class ClinicsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @clinics = Clinic.all
  end

  def show
    @clinic = Clinic.find(params[:id])
  end

  def new
    @clinic = Clinic.new
  end

  def create
    @clinic = Clinic.create(clinic_parms)
    @clinic.user = current_user
    if @clinic.save
      redirect_to clinics_path
    else
      render :new
    end
  end

  private

  def clinic_parms
    params.require(:clinic).permit(:name, :location, :description)
  end
end
