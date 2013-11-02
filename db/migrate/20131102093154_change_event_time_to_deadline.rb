class ChangeEventTimeToDeadline < ActiveRecord::Migration
  def change
    rename_column :events, :time, :deadline

  end
end
