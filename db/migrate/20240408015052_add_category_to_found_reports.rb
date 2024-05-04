class AddCategoryToFoundReports < ActiveRecord::Migration[7.0]
  def change
    add_column :found_reports, :category, :string
  end
end
