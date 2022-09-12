class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :title,              null: false
      t.integer    :shooting_month_id,  null: false
      t.integer    :shooting_week_id ,  null: false
      t.text       :impression_point,   null: false
      t.integer    :parking_presence_id
      t.integer    :parking_fee_id
      t.string     :nearest_station
      t.integer    :walking_time_id
      t.text       :shooting_location,  null: false
      t.text       :other_information
      t.timestamps
    end
  end
end