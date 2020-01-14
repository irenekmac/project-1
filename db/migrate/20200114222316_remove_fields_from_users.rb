class RemoveFieldsFromUsers < ActiveRecord::Migration[5.2]

  def change
    remove_column :users, :health_fund
    remove_column :users, :surgeon
    remove_column :users, :surgery_date
    remove_column :users, :delivery_date
    remove_column :users, :time_of_posturing
    remove_column :users, :health_problems
  end

end
