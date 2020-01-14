class AddFieldsToOrders < ActiveRecord::Migration[5.2]

  def change
    add_column :users, :health_fund, :string
    add_column :users, :surgeon, :string
    add_column :users, :surgery_date, :date
    add_column :users, :delivery_date, :date
    add_column :users, :time_of_posturing, :date
    add_column :users, :health_problems, :text
  end

end
