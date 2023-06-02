class CreateRecordTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :record_types do |t|
      t.integer :record_type_id
      t.string :name
      t.string :r_type

      t.timestamps
    end
  end
end
