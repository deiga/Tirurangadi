class ChangeTimeToCandidateInAttendances < ActiveRecord::Migration
  def change
    rename_column :attendances, :time_id, :candidate_id
  end
end
