class DatosPersonalsController < ApplicationController
  include CodigosGenerales
    before_action :cargarOpcionesDelMenuServicios
    before_action :set_datos_personal, only: [:show, :edit, :update , :destroy]


  def index
    @datos_personals= DatosPersonal.all.paginate(:page=>params[:page], :per_page=>5)
  end

  def new
    @datos_personal=DatosPersonal.new
    @ciudades=['Cuba']
   end

  def create
    # Cuando necesito un dato de los parametros que se envian
    # puts params[:datos_personal][:nombre] 
    # Metodo para enviar a la salida lo que genera en formato texto
    # render :text => params[:datos_personal].inspect
    @datos_personal = DatosPersonal.new(datos_personal_params)
    respond_to do |format|
      if @datos_personal.save
        format.html { redirect_to @datos_personal, notice: 'Datos personales agregados exitosamente.' }
        format.json { render :show, status: :created, location: @datos_personal }
      else
        format.html { render :new }
        format.json { render json: @datos_personal.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @datos_personals=DatosPersonal.find(params[:id])
  end

  def show
    puts "show"
  end

  def update
    respond_to do |format|
      if @datos_personal.update (datos_personal_params)
        format.html{
          redirect_to @datos_personal, notice: "Sus datos personales han sido modificados exitosamente"
        }
        format.json{ render :show, status: :ok, location: @datos_personal}
      else
        format.html { render :edit }
        format.json { render json: @datos_personal.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  def datos_personal_params
    params.require(:datos_personal).permit(:nombre, :apellido, :fecha_nacimiento, :sexo, :telefono, :celular, :direccion, :estado, :ciudad, :calificacion, :correo_alternativo)
  end

  def set_datos_personal
    @datos_personal = DatosPersonal.find(params[:id])
  end

end
