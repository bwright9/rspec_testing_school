class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :size
      t.integer :established

      t.timestamps null: false
    end
  end
end
