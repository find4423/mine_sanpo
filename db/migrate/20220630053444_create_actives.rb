class CreateActives < ActiveRecord::Migration[6.0]
  def change
    create_table :actives do |t|
      t.integer :step
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
