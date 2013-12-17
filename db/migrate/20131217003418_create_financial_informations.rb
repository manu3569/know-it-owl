class CreateFinancialInformations < ActiveRecord::Migration
  def change
    create_table :financial_informations do |t|
      t.integer :income, default: 0
      t.integer :savings, default: 0
      t.integer :retirement, default: 0

      t.timestamps
    end
  end
end
