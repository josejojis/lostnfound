class AddStatusToFoundReports < ActiveRecord::Migration[7.0]
  def change
    add_column :found_reports, :status, :string
  end
end
