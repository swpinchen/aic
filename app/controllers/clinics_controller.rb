class ClinicsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @clinics = policy_scope(Clinic)
  end

  def show
    @clinic = Clinic.find(params[:id])
    authorize @clinic
  end

  def new
    @clinic = Clinic.new
    authorize @clinic
  end

  def create
    @clinic = Clinic.create(clinic_parms)
    @clinic.user = current_user
    authorize @clinic
    if @clinic.save
      redirect_to clinics_path
    else
      render :new
    end
  end

  private

  def clinic_parms
    params.require(:clinic).permit(:name, :location, :description, :photo, :language_list)
  end
end
