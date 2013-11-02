class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :time, index: true
      t.references :attendee, index: true
      t.boolean :data

      t.timestamps
    end
  end
end
