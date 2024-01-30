class AddShortDescriptionToSafari < ActiveRecord::Migration[7.1]
  def change
    add_column :safaris, :short_description, :text
  end
end
