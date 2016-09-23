class RemoveBizDateTimeColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :businesses, :created_at
    remove_column :businesses, :updated_at
  end
end
