class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :contact
      t.string :email
      t.integer :height
      t.integer :weight
      t.string :surgeon
      t.date :surgery_date
      t.date :delivery_date
      t.string :health_fund
      t.integer :time_of_posturing
      t.text :address
      t.text :health_problems
      t.string :card_payment
      t.boolean :card_verified
      t.text :password_digest
      t.integer :user_type
      t.integer :state

      t.timestamps
    end
  end
end
