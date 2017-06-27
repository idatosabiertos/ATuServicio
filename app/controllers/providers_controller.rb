class ProvidersController < ApplicationController

  autocomplete :provider, :search_name, full: true, limit: 15

  before_action :authenticate_user!
  before_action :set_provider, only: [:show, :edit, :update, :destroy]

  # GET /providers
  def index
    @providers = Provider.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /providers/1
  def show
  end

  # GET /providers/new
  def new
    @provider = Provider.new
  end

  # GET /providers/1/edit
  def edit
  end

  # POST /providers
  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      redirect_to @provider, notice: 'Provider was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /providers/1
  def update
    if @provider.update(provider_params)
      redirect_to @provider, notice: 'Provider was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /providers/1
  def destroy
    @provider.destroy
    redirect_to providers_url, notice: 'Provider was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def provider_params
      params.require(:provider).permit(:nombre_abreviado, :nombre_completo, :web, :afiliados_fonasa, :afiliados, :comunicacion, :captacion_rn, :control_desarrollo, :control_embarazo, :control_hiv_vdrl, :control_pauta_45_64, :indice_cesareas, :ticket_de_medicamentos_general_fonasa, :ticket_de_medicamentos_general_no_fonasa, :ticket_de_medicamentos_topeados_fonasa, :ticket_de_medicamentos_topeados_no_fonasa, :consulta_medicina_general_fonasa, :consulta_medicina_general_no_fonasa, :consulta_pediatria_fonasa, :consulta_pediatria_no_fonasa, :consulta_control_de_embarazo_fonasa, :consulta_control_de_embarazo_no_fonasa, :consulta_ginecologia_fonasa, :consulta_ginecologia_no_fonasa, :consulta_otras_especialidades_fonasa, :consulta_otras_especialidades_no_fonasa, :consulta_urgencia_centralizada_fonasa, :consulta_urgencia_centralizada_no_fonasa, :consulta_no_urgencia_domicilio_fonasa, :consulta_no_urgencia_domicilio_no_fonasa, :consulta_urgencia_domicilio_fonasa, :consulta_urgencia_domicilio_no_fonasa, :consulta_odontologica_fonasa, :consulta_odontologica_no_fonasa, :consulta_medico_de_referencia_fonasa, :consulta_medico_de_referencia_no_fonasa, :endoscopia_digestiva_endoscopia_fonasa, :endoscopia_digestiva_endoscopia_no_fonasa, :ecografia_simple_fonasa, :ecografia_simple_no_fonasa, :ecodoppler_fonasa, :ecodoppler_no_fonasa, :rx_simple_fonasa, :rx_simple_no_fonasa, :rx_torax_fonasa, :rx_torax_no_fonasa, :rx_colorectal_fonasa, :rx_colorectal_no_fonasa, :resonancia_fonasa, :resonancia_no_fonasa, :tomografia_fonasa, :tomografia_no_fonasa, :laboratorio_rutina_basica_fonasa, :laboratorio_rutina_basica_no_fonasa, :tiempo_espera_medicina_general, :tiempo_espera_pediatria, :tiempo_espera_cirugia_general, :tiempo_espera_ginecotocologia, :tiempo_espera_cardiologia, :conformidad_disponibilidad_agenda_2014, :conformidad_disponibilidad_agenda_2010, :evaluacion_tiempo_espera_sala_2014, :evaluacion_tiempo_espera_sala_2010, :facilidad_para_realizar_tramites_gestiones_2014, :facilidad_para_realizar_tramites_gestiones_2010, :disponibilidad_medicamentos_farmacia_2014, :disponibilidad_medicamentos_farmacia_2010, :informacion_sobre_derechos_2014, :informacion_sobre_derechos_2010, :queja_sugerencia_sabe_donde_dirigirse_2014, :queja_sugerencia_sabe_donde_dirigirse_2010, :satisfaccion_primer_nivel_atencion_2014, :satisfaccion_primer_nivel_atencion_2010, :satisfaccion_internacion_hospitalaria_2012, :medicos_generales_policlinica, :medicos_de_familia_policlinica, :medicos_pediatras_policlinica, :medicos_ginecologos_policlinica, :auxiliares_enfermeria_policlinica, :licenciadas_enfermeria_policlinica, :cantidad_cad, :medicina_general_cantidad_cad, :medicina_familiar_cantidad_cad, :pediatria_cantidad_cad, :ginecotologia_cantidad_cad, :medicina_interna_cantidad_cad, :medicina_intensiva_adultos_cantidad_cad, :medicina_intensiva_pediatrica_cantidad_cad, :neonatologia_cantidad_cad, :cantidad_cad_psiquiatria_adultos, :cantidad_cad_psiquiatria_pediatrica, :especialidades_medicas_cantidad_cad, :cirugia_general_cantidad_cad, :medicina_emergencia_cantidad_cad, :reserva_presencial, :reserva_telefonica, :reserva_web, :reserva_consulta_medica, :realiza_recordatorio_cita, :realiza_caida_reserva_sin_confirmacion, :comunicacion_usuario_suspension_modificacion, :private_insurance, :estructura_primaria, :estructura_secundaria, :estructura_ambulatorio, :estructura_urgencia, :logo, :search_name, :vias_asignacion_citas)
    end
end
