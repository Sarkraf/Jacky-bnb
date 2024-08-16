class BookingsController < ApplicationController

  def index
    @user_bookings = Booking.where(user_id: current_user.id)
    @owner_bookings = Booking.where(vehicule: current_user.vehicules)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.vehicule = Vehicule.find(params[:vehicule_id])
    @booking.status = 'Pending'
    if @booking.save
      redirect_to vehicules_path, notice: 'Votre demande de réservation a bien été envoyée'
    else
      render :new, status: :unprocessable_entity, locals: { booking: @booking }
    end
  end

  def edit
    @user = current_user
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(status: params[:status])
    redirect_to user_bookings_path(@booking.user), notice: 'Booking was successfully updated.'
  end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy
  #   redirect_to user_bookings_path(@booking.user), notice: 'Booking was successfully canceled.'
  # end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
