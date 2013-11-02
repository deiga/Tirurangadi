class RemoveAttendees < ActiveRecord::Migration
  def change
    drop_table :attendees
    change_table :attendances do |t|
      t.remove :attendee_id
      t.string :attendee
      t.index :attendee
    end
  end
end
