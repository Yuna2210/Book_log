class ChangeColumnDescriptionDate < ActiveRecord::Migration[6.0]
  def change
    change_column :works, :description, :text
  end
end
