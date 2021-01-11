class CreateDataNoStations < ActiveRecord::Migration[6.0]
  def change
    create_table :data_no_stations do |t|

      t.timestamps
    end
  end
end
