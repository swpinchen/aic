class ReviewsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]
  def index
    @reviews = Review.find(params[:clinic_id])
  end

  def new
    @review = Review.new
    @clinic = Clinic.find(params[:clinic_id])
    authorize @review
  end

  def create
    @review = Review.create(review_params)
    @clinic = Clinic.find(params[:clinic_id])
    @review.clinic = @clinic
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to clinic_path(@review.clinic)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
