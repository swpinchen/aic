class ReviewsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]
  def index
    @reviews = Review.find(params[:clinic_id])
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.clinic = Clinic.find(params[:clinic_id])
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
