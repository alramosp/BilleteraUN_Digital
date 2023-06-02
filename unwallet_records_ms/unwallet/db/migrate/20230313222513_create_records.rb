class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.integer :record_id
      t.integer :user_id
      t.integer :account_id
      t.integer :category_id
      t.string :name
      t.integer :record_type_id
      t.float :amount
      t.date :date

      t.timestamps
    end
  end
end
