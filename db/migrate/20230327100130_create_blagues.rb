class CreateBlagues < ActiveRecord::Migration[7.0]
  def change
    create_table :blagues do |t|
      t.string :nom
      t.string :contenu
      t.string :auteur

      t.timestamps
    end
  end
end
