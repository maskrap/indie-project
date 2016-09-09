class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :biz_name
      t.string :biz_type
      t.string :biz_address
      t.string :biz_contact
      t.integer :biz_number
      t.timestamps
    end
  end
end
