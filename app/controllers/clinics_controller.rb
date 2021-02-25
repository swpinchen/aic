class ClinicsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @clinics = policy_scope(Clinic)
    @clinics = @clinics.near(params[:location], 5) if params[:location].present? #location
    @clinics = @clinics.tagged_with(params[:query], any: true) if params[:query].present? #query, keywords
    @markers = @clinics.geocoded.map do |clinic|
      {
        lat: clinic.latitude,
        lng: clinic.longitude
      }
    end
  end

  def show
    @clinic = Clinic.find(params[:id])
    authorize @clinic
    @markers = [{lat: @clinic.latitude, lng: @clinic.longitude}]
  end

  def new
    @clinic = Clinic.new
    authorize @clinic
  end

  def create
    @clinic = Clinic.create(clinic_params)
    @clinic.user = current_user
    authorize @clinic
    if @clinic.save
      redirect_to clinics_path
    else
      render :new
    end
  end

  def edit
    @clinic = Clinic.find(params[:id])
    authorize @clinic
  end

  def update
    @clinic = Clinic.find(params[:id])
    authorize @clinic
    if @clinic.update(clinic_params)
      redirect_to clinic_path(@clinic)
    else
      # render 'edit.html.erb'
      render :edit
    end
  end

  private

  def clinic_params
    params.require(:clinic).permit(:name, :location, :description, :photo, :language_list)
  end
end
