class CreateVeterinarians < ActiveRecord::Migration[5.2]
  def change
    create_table :veterinarians do |t|
      t.boolean :on_call
      t.integer :review_rating
      t.string :name

      t.timestamps
    end
  end
end
