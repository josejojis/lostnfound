class AddImageToFoundReports < ActiveRecord::Migration[7.0]
  def change
    add_column :found_reports, :image, :string
  end
end
