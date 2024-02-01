class ChangeRoleDataTypeToTextInUsers < ActiveRecord::Migration[7.1]
  def up
    change_column :users, :role, :text, default: 'user'
  end

  def down
    change_column :users, :role, :integer, default: 0
  end
end
