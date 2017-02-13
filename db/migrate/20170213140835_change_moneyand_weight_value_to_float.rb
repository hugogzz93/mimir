class ChangeMoneyandWeightValueToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :money, :value, :float
    change_column :weights, :value, :float
  end
end
