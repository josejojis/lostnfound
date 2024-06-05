class AddBountyToFoundReports < ActiveRecord::Migration[7.0]
  def change
    add_column :found_reports, :bounty, :integer
  end
end
