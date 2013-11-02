class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :time
      t.string :location
      t.string :created_by

      t.timestamps
    end
  end
end
