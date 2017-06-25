require 'rails_helper'

RSpec.describe "providers/show", type: :view do
  before(:each) do
    @provider = assign(:provider, Provider.create!(
      :nombre_abreviado => "Nombre Abreviado",
      :nombre_completo => "Nombre Completo",
      :web => "Web",
      :afiliados_fonasa => 1,
      :afiliados => 2,
      :comunicacion => "MyText",
      :captacion_rn => "9.99",
      :control_desarrollo => "9.99",
      :control_embarazo => "9.99",
      :control_hiv_vdrl => "9.99",
      :control_pauta_45_64 => "9.99",
      :indice_cesareas => "9.99",
      :ticket_de_medicamentos_general_fonasa => "9.99",
      :ticket_de_medicamentos_general_no_fonasa => "9.99",
      :ticket_de_medicamentos_topeados_fonasa => "9.99",
      :ticket_de_medicamentos_topeados_no_fonasa => "9.99",
      :consulta_medicina_general_fonasa => "9.99",
      :consulta_medicina_general_no_fonasa => "9.99",
      :consulta_pediatria_fonasa => "9.99",
      :consulta_pediatria_no_fonasa => "9.99",
      :consulta_control_de_embarazo_fonasa => "9.99",
      :consulta_control_de_embarazo_no_fonasa => "9.99",
      :consulta_ginecologia_fonasa => "9.99",
      :consulta_ginecologia_no_fonasa => "9.99",
      :consulta_otras_especialidades_fonasa => "9.99",
      :consulta_otras_especialidades_no_fonasa => "9.99",
      :consulta_urgencia_centralizada_fonasa => "9.99",
      :consulta_urgencia_centralizada_no_fonasa => "9.99",
      :consulta_no_urgencia_domicilio_fonasa => "9.99",
      :consulta_no_urgencia_domicilio_no_fonasa => "9.99",
      :consulta_urgencia_domicilio_fonasa => "9.99",
      :consulta_urgencia_domicilio_no_fonasa => "9.99",
      :consulta_odontologica_fonasa => "9.99",
      :consulta_odontologica_no_fonasa => "9.99",
      :consulta_medico_de_referencia_fonasa => "9.99",
      :consulta_medico_de_referencia_no_fonasa => "9.99",
      :endoscopia_digestiva_endoscopia_fonasa => "9.99",
      :endoscopia_digestiva_endoscopia_no_fonasa => "9.99",
      :ecografia_simple_fonasa => "9.99",
      :ecografia_simple_no_fonasa => "9.99",
      :ecodoppler_fonasa => "9.99",
      :ecodoppler_no_fonasa => "9.99",
      :rx_simple_fonasa => "9.99",
      :rx_simple_no_fonasa => "9.99",
      :rx_torax_fonasa => "9.99",
      :rx_torax_no_fonasa => "9.99",
      :rx_colorectal_fonasa => "9.99",
      :rx_colorectal_no_fonasa => "9.99",
      :resonancia_fonasa => "9.99",
      :resonancia_no_fonasa => "9.99",
      :tomografia_fonasa => "9.99",
      :tomografia_no_fonasa => "9.99",
      :laboratorio_rutina_basica_fonasa => "9.99",
      :laboratorio_rutina_basica_no_fonasa => "9.99",
      :tiempo_espera_medicina_general => "9.99",
      :tiempo_espera_pediatria => "9.99",
      :tiempo_espera_cirugia_general => "9.99",
      :tiempo_espera_ginecotocologia => "9.99",
      :tiempo_espera_cardiologia => "9.99",
      :conformidad_disponibilidad_agenda_2014 => "9.99",
      :conformidad_disponibilidad_agenda_2010 => "9.99",
      :evaluacion_tiempo_espera_sala_2014 => "9.99",
      :evaluacion_tiempo_espera_sala_2010 => "9.99",
      :facilidad_para_realizar_tramites_gestiones_2014 => "9.99",
      :facilidad_para_realizar_tramites_gestiones_2010 => "9.99",
      :disponibilidad_medicamentos_farmacia_2014 => "9.99",
      :disponibilidad_medicamentos_farmacia_2010 => "9.99",
      :informacion_sobre_derechos_2014 => "9.99",
      :informacion_sobre_derechos_2010 => "9.99",
      :queja_sugerencia_sabe_donde_dirigirse_2014 => "9.99",
      :queja_sugerencia_sabe_donde_dirigirse_2010 => "9.99",
      :satisfaccion_primer_nivel_atencion_2014 => "9.99",
      :satisfaccion_primer_nivel_atencion_2010 => "9.99",
      :satisfaccion_internacion_hospitalaria_2012 => "9.99",
      :medicos_generales_policlinica => "9.99",
      :medicos_de_familia_policlinica => "9.99",
      :medicos_pediatras_policlinica => "9.99",
      :medicos_ginecologos_policlinica => "9.99",
      :auxiliares_enfermeria_policlinica => "9.99",
      :licenciadas_enfermeria_policlinica => "9.99",
      :cantidad_cad => "9.99",
      :medicina_general_cantidad_cad => "9.99",
      :medicina_familiar_cantidad_cad => "9.99",
      :pediatria_cantidad_cad => "9.99",
      :ginecotologia_cantidad_cad => "9.99",
      :medicina_interna_cantidad_cad => "9.99",
      :medicina_intensiva_adultos_cantidad_cad => "9.99",
      :medicina_intensiva_pediatrica_cantidad_cad => "9.99",
      :neonatologia_cantidad_cad => "9.99",
      :cantidad_cad_psiquiatria_adultos => "9.99",
      :cantidad_cad_psiquiatria_pediatrica => "9.99",
      :especialidades_medicas_cantidad_cad => "9.99",
      :cirugia_general_cantidad_cad => "9.99",
      :medicina_emergencia_cantidad_cad => "9.99",
      :reserva_presencial => "Reserva Presencial",
      :reserva_telefonica => "Reserva Telefonica",
      :reserva_web => "Reserva Web",
      :reserva_consulta_medica => "Reserva Consulta Medica",
      :realiza_recordatorio_cita => "Realiza Recordatorio Cita",
      :realiza_caida_reserva_sin_confirmacion => "Realiza Caida Reserva Sin Confirmacion",
      :comunicacion_usuario_suspension_modificacion => "Comunicacion Usuario Suspension Modificacion",
      :private_insurance => false,
      :estructura_primaria => 3,
      :estructura_secundaria => 4,
      :estructura_ambulatorio => 5,
      :estructura_urgencia => 6,
      :logo => "Logo",
      :search_name => "Search Name",
      :vias_asignacion_citas => "Vias Asignacion Citas"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre Abreviado/)
    expect(rendered).to match(/Nombre Completo/)
    expect(rendered).to match(/Web/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Reserva Presencial/)
    expect(rendered).to match(/Reserva Telefonica/)
    expect(rendered).to match(/Reserva Web/)
    expect(rendered).to match(/Reserva Consulta Medica/)
    expect(rendered).to match(/Realiza Recordatorio Cita/)
    expect(rendered).to match(/Realiza Caida Reserva Sin Confirmacion/)
    expect(rendered).to match(/Comunicacion Usuario Suspension Modificacion/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Logo/)
    expect(rendered).to match(/Search Name/)
    expect(rendered).to match(/Vias Asignacion Citas/)
  end
end
