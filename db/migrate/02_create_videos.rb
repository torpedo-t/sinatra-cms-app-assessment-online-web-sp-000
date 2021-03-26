class CreateVideos < ActiveRecord::Migration[5.2]
    def change
        create_table :videos do |t|
          t.string :name
          t.string :category
          t.integer :user_id
        end
    end
end