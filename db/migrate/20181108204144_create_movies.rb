class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :date
      t.text :overview
      t.string :img
      t.timestamps
    end
  end
end
