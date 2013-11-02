class RenameTimesToEventTimes < ActiveRecord::Migration
  def change
    rename_table :times, :candidates
  end
end
