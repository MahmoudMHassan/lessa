class Up < ActiveRecord::Migration
  def change

    change_column :posts, :text, :text

  end
end
