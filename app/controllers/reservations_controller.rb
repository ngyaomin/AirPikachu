class ReservationsController < ApplicationController

  def create
    room = Room.find(params[:room_id])

    start_date = Date.parse(reservation_params[:start_date])
    end_date = Date.parse(reservation_params[:end_date])
    days = (end_date - start_date).to_i + 1

    @reservation = current_user.reservation.build(reservation_params)

  end

  private
    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date)
    end

end
