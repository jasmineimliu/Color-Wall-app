class AddColorsKeyToCardsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :colors, :string
  end
end
