class TipoServicio < ActiveRecord::Base
	has_many :servicios

	validates :nombre, :presence => {:message=>"Debe colocar el nombre del servicio"}
	validates :descripcion, :presence => {:message=>"Debe colocar la descripcion del servicio"}

	def to_label
		"#{nombre} | #{descripcion}"
	end

	def to_s
		"#{nombre} / #{descripcion}"
	end

end
