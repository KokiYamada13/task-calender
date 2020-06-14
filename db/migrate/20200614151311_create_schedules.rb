class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :address
      t.text :details

      t.timestamps
    end
  end
end
