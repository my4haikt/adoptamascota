class AddCampo1ToServicios < ActiveRecord::Migration
  def change
    add_column :servicios, :campo1, :string
  end
end
