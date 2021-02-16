class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :author
      t.string :title
      t.text :text
      t.integer :votes_count, default: 0

      t.timestamps
    end
  end
end
