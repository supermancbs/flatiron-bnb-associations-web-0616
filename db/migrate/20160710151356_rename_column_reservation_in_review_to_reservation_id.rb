class RenameColumnReservationInReviewToReservationId < ActiveRecord::Migration
  def change
    rename_column :reviews, :reservation, :reservation_id
  end
end
