class AddStatusToTimeframes < ActiveRecord::Migration[5.2]
  def change
    add_column :timeframes, :status, :boolean
  end
end
