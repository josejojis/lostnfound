class CreateLostReports < ActiveRecord::Migration[7.0]
  def change
    create_table :lost_reports do |t|
      t.string :name
      t.string :location
      t.datetime :date_lost

      t.timestamps
    end
  end
end
