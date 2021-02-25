class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @clinic = Clinic.find(params[:clinic_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @clinic = Clinic.find(params[:clinic_id])
    @booking.clinic = @clinic
    @booking.user = current_user
    authorize @booking
    @booking.save
    redirect_to bookings_path, notice: "Successfully booked 🎉"
  end
  def index
    @bookings = policy_scope(Booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end


  private

  def booking_params
    params.require(:booking).permit(:booking_time, :content)
  end
end
