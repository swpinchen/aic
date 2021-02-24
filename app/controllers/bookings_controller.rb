class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @clinic = Clinic.find(params[:clinic_id])
    authorize @booking
  end
    
  def create
    @booking = Booking.create(booking_params)
    @clinic = Clinic.find(params[:clinic_id])
    @booking.clinic = @clinic
    @booking.user = current_user
    authorize @booking
    @booking.save
    redirect_to clinic_path(@clinic), notice: "Successfully booked 🎉"
  end

  private
  
  def booking_params
    params.require(:booking).permit(:booking_time, :content)
  end
end
