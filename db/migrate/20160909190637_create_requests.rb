class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :interval # PUT DROP DOWN HERE? FOR INDIVIDUAL REQUEST OR REGULAR REQUEST?
      t.timestamps
      t.integer :business_id
    end
  end
end
