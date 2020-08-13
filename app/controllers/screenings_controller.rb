class ScreeningsController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]
 before_action :set_screening, only: [:show, :edit, :update, :destroy]

  def index
    @screening = Screening.new
    @screenings = policy_scope(Screening).order(created_at: :desc)
    if params[:location].present? && params[:date].present? && params[:capacity].present?
      @screenings = Screening.in(params[:location]).day(params[:date]).min_capacity(params[:capacity])
    else
      @screenings = Screening.all
    end
  end

  def new
    @screening = Screening.new
    authorize @screening
  end

  def create
    @screening = Screening.new(screening_params)
    @screening.user = current_user
    authorize @screening
    if @screening.save
      redirect_to screening_path(@screening)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @screening.update(params[:screening])
  end

  def search
  end

  def destroy
    @screening.destroy
    redirect_to screening_path(@screening)
  end

  def share
  end

  private

  def set_screening
    @screening = Screening.find(params[:id])
    authorize @screening
  end

  def screening_params
    params.require(:screening).permit(:location, :film, :number_of_guests, :price, :description, :datetime, photos: [])
  end

end
