class AddAuthorIdToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :author_id, :integer 
  end
end
