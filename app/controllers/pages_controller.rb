class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @screening = Screening.new
    @screenings = Screening.all
  end
end
