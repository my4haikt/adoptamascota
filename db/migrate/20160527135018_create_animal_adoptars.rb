class CreateAnimalAdoptars < ActiveRecord::Migration
  def change
    create_table :animal_adoptars do |t|
      t.string :tipo
      t.string :raza
      t.string :genero
      t.string :edad
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
