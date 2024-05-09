class AddUserToFoundReports < ActiveRecord::Migration[7.0]
  def up
    # Add user_id column with a default value
    add_reference :found_reports, :user, null: false, foreign_key: true, default: 1

    # Update existing records with a default user_id
    default_user_id = 1
    FoundReport.where(user_id: nil).update_all(user_id: default_user_id)
  end

  def down
    remove_reference :found_reports, :user
  end
end
