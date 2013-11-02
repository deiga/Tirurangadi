class CreateTimes < ActiveRecord::Migration
  def change
    create_table :times do |t|
      t.string :title
      t.datetime :time

      t.timestamps
    end
  end
end
