class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :data_url

      t.timestamps null: false
    end
  end
end
