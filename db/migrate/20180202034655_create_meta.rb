class CreateMeta < ActiveRecord::Migration[5.1]
  def change
    create_table :meta do |t|
      t.references :user, foreign_key: true
      t.references :submission, foreign_key: true
      t.boolean :read
      t.integer :evaluation, default: 0
      t.datetime :last_edited

      t.timestamps
    end
  end
end
