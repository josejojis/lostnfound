class AddPhoneNumberToFoundReports < ActiveRecord::Migration[7.0]
  def change
    add_column :found_reports, :phone_number, :string
  end
end
