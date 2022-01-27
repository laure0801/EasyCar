class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @cars = Car.all
  end

  def profile
    @user = current_user
    @reservation_requests = @user.bookings
    @bookings = Booking.all
  end
end
