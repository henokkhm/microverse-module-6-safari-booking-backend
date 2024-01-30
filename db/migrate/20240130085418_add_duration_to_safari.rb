class AddDurationToSafari < ActiveRecord::Migration[7.1]
  def change
    add_column :safaris, :duration, :integer
  end
end
