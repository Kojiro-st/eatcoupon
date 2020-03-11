class CreateCustomerUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_users do |t|
      t.references :customer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
