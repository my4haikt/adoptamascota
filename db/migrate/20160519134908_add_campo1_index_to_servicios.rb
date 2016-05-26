class AddCampo1IndexToServicios < ActiveRecord::Migration
  def change
    add_column :servicios, :campo1, :string
    add_index :servicios, :campo1
  end
end
