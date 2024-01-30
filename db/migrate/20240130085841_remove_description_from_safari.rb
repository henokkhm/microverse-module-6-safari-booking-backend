class RemoveDescriptionFromSafari < ActiveRecord::Migration[7.1]
  def change
    remove_column :safaris, :description, :text
  end
end
