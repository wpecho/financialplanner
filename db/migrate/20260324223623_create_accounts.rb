class CreateAccounts < ActiveRecord::Migration[8.1]
  def change
    create_table :accounts do |t|
      t.decimal :starting_balance, precision: 12, scale: 2, default: 0, null: false
      t.decimal :current_balance, precision: 12, scale: 2, default: 0, null: false
      t.string :currency, null: false, default: "USD"
      t.string :name, null: false
      t.string :account_type, null: false

      t.timestamps
    end
  end
end
