class ScreeningsController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]
 before_action :set_screening, only: [:show, :edit, :update, :destroy]

  def index
    @screenings = policy_scope(Screening).order(created_at: :desc)
  end

  def show
  end

  def new
    @screening = Screening.new
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
  end

  def screening_params
    params.require(:screening).permit(:location, :film, :number_of_guests, :price, :description, :datetime)
  end

end