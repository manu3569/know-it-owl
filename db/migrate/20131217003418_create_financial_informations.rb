class CreateFinancialInformations < ActiveRecord::Migration
  def change
    create_table :financial_informations do |t|
      t.integer :income
      t.integer :savings
      t.integer :retirement

      t.timestamps
    end
  end
end
