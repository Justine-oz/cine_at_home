class BookingsController < ApplicationController
 # skip_before_action :authenticate_user!, only: [:index, :show]
 # before_action :set_booking, only: [:new, :show, :edit, :update, :destroy]

  # def index
  #   @booking = Booking.new
  #   @bookings = policy_scope(Booking).order(created_at: :desc)
  #   # if params[:booking].present?
  #   #   @bookings =
  #   # else
  #   #   @bookings = Booking.all
  #   # end
  # end

  def new
    @screening = Screening.find(params[:screening_id])
    authorize @screening
    @booking = Booking.new
    authorize @booking
  end

  def create
    @screening = Screening.find(params[:screening_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.screening = @screening
    authorize @booking
    if @booking.save!
      redirect_to screening_path(@screening)
    else
      render "screenings/show"
    end
  end

  def show
    @screening = Screening.find(params[:screening_id])
  end

  # def edit
  # end

  # def update
  #   @screening.update(params[:screening])
  # end

  # def search
  # end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path(@booking.screening)
  end

  # private

  # def set_booking
  #   @screening = Screening.find(params[:screening_id])
  #   authorize @screening
  # end

  def booking_params
    params.require(:booking).permit(:number_of_guests)
  end
end
