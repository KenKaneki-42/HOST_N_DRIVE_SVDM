class ChangedColumunTypePriceToMissions < ActiveRecord::Migration[7.0]
  def change
    remove_column :missions, :price, :string
    add_column :missions, :price, :integer
  end
end
