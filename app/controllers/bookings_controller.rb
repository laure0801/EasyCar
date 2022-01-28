class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @car = Car.find(params[:car_id])
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to car_booking_path(@booking.car, @booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @car = Car.find(params[:car_id])

  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    @car = Car.find(params[:car_id])
    if @booking.save
      redirect_to car_booking_path(@car, @booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_url, notice: 'Booking was successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :car_id, :user_id)
  end
end
