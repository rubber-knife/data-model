class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.references :medium, foreign_key: true
      t.string :upload_uid
      t.string :upload_name

      t.timestamps
    end
  end
end
