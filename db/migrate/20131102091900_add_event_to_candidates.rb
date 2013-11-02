class AddEventToCandidates < ActiveRecord::Migration
  def change
    add_reference :candidates, :event
  end
end
