class CreateFoundReports < ActiveRecord::Migration[7.0]
  def change
    create_table :found_reports do |t|
      t.string :item_name
      t.string :location_found
      t.datetime :date
      t.text :description

      t.timestamps
    end
  end
end
