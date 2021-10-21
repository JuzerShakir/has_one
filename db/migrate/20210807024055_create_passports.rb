class CreatePassports < ActiveRecord::Migration[5.2]
  def change
    create_table :passports do |t|
      t.integer :number
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
