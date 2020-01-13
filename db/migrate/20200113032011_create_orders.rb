class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :item_size
      t.integer :patient_id
      t.integer :technician_id

      t.integer :status

      t.timestamps
    end
  end
end
