class User < ActiveRecord::Base

  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings, :foreign_key => 'host_id'
  has_many :reviews, :foreign_key => 'guest_id'

  def trips
    Reservation.where(id = 'guest_id')
  end 

end
