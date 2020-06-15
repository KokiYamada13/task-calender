class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :address
      t.text :details
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
