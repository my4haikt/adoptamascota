class AddEdadToAnimalAdoptar < ActiveRecord::Migration
  def change
    add_column :animal_adoptars, :edad, :string
  end
end
