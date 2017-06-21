class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :rules
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
