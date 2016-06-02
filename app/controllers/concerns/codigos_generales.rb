module CodigosGenerales
	extend ActiveSupport::Concern

	def cargarOpcionesDelMenuServicios
		@tipo_servicios = TipoServicio.all
	end
end
