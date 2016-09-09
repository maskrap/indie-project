class AddDateColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :date, :datetime
  end
end
