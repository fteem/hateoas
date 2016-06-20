class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.references :author, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
