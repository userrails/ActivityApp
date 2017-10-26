class AddColumnSeenOnEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :seen, :boolean, default: false
  end
end
