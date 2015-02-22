class CreateEmbeds < ActiveRecord::Migration
  def change
    create_table :embeds do |t|
      t.integer :postid
      t.text :url

      t.timestamps null: false
    end
  end
end
