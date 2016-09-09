class AddPhoneNumberToBusiness < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :biz_phone, :string
  end
end
