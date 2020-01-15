class ChangeTimeOfPosturingToIntegerInOrders < ActiveRecord::Migration[5.2]
  def change
  change_column :orders, :time_of_posturing, :string
  end
end
