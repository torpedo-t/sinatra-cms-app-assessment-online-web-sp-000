class DeleteLengthOfTimeFromVideos < ActiveRecord::Migration[5.2]
    def change
      remove_column :videos, :length_of_time, :integer
    end
  end