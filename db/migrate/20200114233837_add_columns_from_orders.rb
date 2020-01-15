class AddColumnsFromOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :health_fund, :string
    add_column :orders, :surgeon, :string
    add_column :orders, :surgery_date, :date
    add_column :orders, :delivery_date, :date
    add_column :orders, :time_of_posturing, :string
    add_column :orders, :health_problems, :text
  end
end
