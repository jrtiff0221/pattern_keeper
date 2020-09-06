class CreatePatterns < ActiveRecord::Migration[6.0]
  def change
    create_table :patterns do |t|
      t.string :title
      t.string :author
      t.integer :published_date
      t.string :category
      t.string :difficulty
      t.text :description
      t.string :name
      t.string :website
      t.integer :pattern_id
      t.timestamps
    end
  end
end
