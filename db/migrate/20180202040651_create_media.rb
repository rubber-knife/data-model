class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.references :submission, foreign_key: true
      t.string :title
      t.integer :kind
      t.text :text
      t.string :medium
      t.string :materials_used

      t.timestamps
    end
  end
end
