class CreateActivityData < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_data do |t|
      t.string :name
      t.integer :cph_130
      t.integer :cph_155
      t.integer :cph_180
      t.integer :cph_205

      t.timestamps
    end
  end
end
