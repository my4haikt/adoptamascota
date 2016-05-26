class RemoveCampo1ToServicios < ActiveRecord::Migration
  def change
    remove_column :servicios, :campo1, :string
  end
end
