class CreateMusicas < ActiveRecord::Migration
  def change
    create_table :musicas do |t|
      t.string :nombre
      t.string :artista
      t.integer :anio

      t.timestamps
    end
  end
end
