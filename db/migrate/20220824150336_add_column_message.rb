class AddColumnMessage < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :user_id, :integer
    add_column :messages, :admin_id, :integer
  end
end
