class AddLongDescriptionToSafari < ActiveRecord::Migration[7.1]
  def change
    add_column :safaris, :long_description, :text
  end
end
