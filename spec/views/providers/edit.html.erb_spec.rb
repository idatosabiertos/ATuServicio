require 'rails_helper'

RSpec.describe "providers/edit", type: :view do
  before(:each) do
    @provider = assign(:provider, Provider.create!(
      :nombre_abreviado => "MyString",
      :nombre_completo => "MyString",
      :web => "MyString",
      :afiliados_fonasa => 1,
      :afiliados => 1,
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
      :reserva_presencial => "MyString",
      :reserva_telefonica => "MyString",
      :reserva_web => "MyString",
      :reserva_consulta_medica => "MyString",
      :realiza_recordatorio_cita => "MyString",
      :realiza_caida_reserva_sin_confirmacion => "MyString",
      :comunicacion_usuario_suspension_modificacion => "MyString",
      :private_insurance => false,
      :estructura_primaria => 1,
      :estructura_secundaria => 1,
      :estructura_ambulatorio => 1,
      :estructura_urgencia => 1,
      :logo => "MyString",
      :search_name => "MyString",
      :vias_asignacion_citas => "MyString"
    ))
  end

  it "renders the edit provider form" do
    render

    assert_select "form[action=?][method=?]", provider_path(@provider), "post" do

      assert_select "input#provider_nombre_abreviado[name=?]", "provider[nombre_abreviado]"

      assert_select "input#provider_nombre_completo[name=?]", "provider[nombre_completo]"

      assert_select "input#provider_web[name=?]", "provider[web]"

      assert_select "input#provider_afiliados_fonasa[name=?]", "provider[afiliados_fonasa]"

      assert_select "input#provider_afiliados[name=?]", "provider[afiliados]"

      assert_select "textarea#provider_comunicacion[name=?]", "provider[comunicacion]"

      assert_select "input#provider_captacion_rn[name=?]", "provider[captacion_rn]"

      assert_select "input#provider_control_desarrollo[name=?]", "provider[control_desarrollo]"

      assert_select "input#provider_control_embarazo[name=?]", "provider[control_embarazo]"

      assert_select "input#provider_control_hiv_vdrl[name=?]", "provider[control_hiv_vdrl]"

      assert_select "input#provider_control_pauta_45_64[name=?]", "provider[control_pauta_45_64]"

      assert_select "input#provider_indice_cesareas[name=?]", "provider[indice_cesareas]"

      assert_select "input#provider_ticket_de_medicamentos_general_fonasa[name=?]", "provider[ticket_de_medicamentos_general_fonasa]"

      assert_select "input#provider_ticket_de_medicamentos_general_no_fonasa[name=?]", "provider[ticket_de_medicamentos_general_no_fonasa]"

      assert_select "input#provider_ticket_de_medicamentos_topeados_fonasa[name=?]", "provider[ticket_de_medicamentos_topeados_fonasa]"

      assert_select "input#provider_ticket_de_medicamentos_topeados_no_fonasa[name=?]", "provider[ticket_de_medicamentos_topeados_no_fonasa]"

      assert_select "input#provider_consulta_medicina_general_fonasa[name=?]", "provider[consulta_medicina_general_fonasa]"

      assert_select "input#provider_consulta_medicina_general_no_fonasa[name=?]", "provider[consulta_medicina_general_no_fonasa]"

      assert_select "input#provider_consulta_pediatria_fonasa[name=?]", "provider[consulta_pediatria_fonasa]"

      assert_select "input#provider_consulta_pediatria_no_fonasa[name=?]", "provider[consulta_pediatria_no_fonasa]"

      assert_select "input#provider_consulta_control_de_embarazo_fonasa[name=?]", "provider[consulta_control_de_embarazo_fonasa]"

      assert_select "input#provider_consulta_control_de_embarazo_no_fonasa[name=?]", "provider[consulta_control_de_embarazo_no_fonasa]"

      assert_select "input#provider_consulta_ginecologia_fonasa[name=?]", "provider[consulta_ginecologia_fonasa]"

      assert_select "input#provider_consulta_ginecologia_no_fonasa[name=?]", "provider[consulta_ginecologia_no_fonasa]"

      assert_select "input#provider_consulta_otras_especialidades_fonasa[name=?]", "provider[consulta_otras_especialidades_fonasa]"

      assert_select "input#provider_consulta_otras_especialidades_no_fonasa[name=?]", "provider[consulta_otras_especialidades_no_fonasa]"

      assert_select "input#provider_consulta_urgencia_centralizada_fonasa[name=?]", "provider[consulta_urgencia_centralizada_fonasa]"

      assert_select "input#provider_consulta_urgencia_centralizada_no_fonasa[name=?]", "provider[consulta_urgencia_centralizada_no_fonasa]"

      assert_select "input#provider_consulta_no_urgencia_domicilio_fonasa[name=?]", "provider[consulta_no_urgencia_domicilio_fonasa]"

      assert_select "input#provider_consulta_no_urgencia_domicilio_no_fonasa[name=?]", "provider[consulta_no_urgencia_domicilio_no_fonasa]"

      assert_select "input#provider_consulta_urgencia_domicilio_fonasa[name=?]", "provider[consulta_urgencia_domicilio_fonasa]"

      assert_select "input#provider_consulta_urgencia_domicilio_no_fonasa[name=?]", "provider[consulta_urgencia_domicilio_no_fonasa]"

      assert_select "input#provider_consulta_odontologica_fonasa[name=?]", "provider[consulta_odontologica_fonasa]"

      assert_select "input#provider_consulta_odontologica_no_fonasa[name=?]", "provider[consulta_odontologica_no_fonasa]"

      assert_select "input#provider_consulta_medico_de_referencia_fonasa[name=?]", "provider[consulta_medico_de_referencia_fonasa]"

      assert_select "input#provider_consulta_medico_de_referencia_no_fonasa[name=?]", "provider[consulta_medico_de_referencia_no_fonasa]"

      assert_select "input#provider_endoscopia_digestiva_endoscopia_fonasa[name=?]", "provider[endoscopia_digestiva_endoscopia_fonasa]"

      assert_select "input#provider_endoscopia_digestiva_endoscopia_no_fonasa[name=?]", "provider[endoscopia_digestiva_endoscopia_no_fonasa]"

      assert_select "input#provider_ecografia_simple_fonasa[name=?]", "provider[ecografia_simple_fonasa]"

      assert_select "input#provider_ecografia_simple_no_fonasa[name=?]", "provider[ecografia_simple_no_fonasa]"

      assert_select "input#provider_ecodoppler_fonasa[name=?]", "provider[ecodoppler_fonasa]"

      assert_select "input#provider_ecodoppler_no_fonasa[name=?]", "provider[ecodoppler_no_fonasa]"

      assert_select "input#provider_rx_simple_fonasa[name=?]", "provider[rx_simple_fonasa]"

      assert_select "input#provider_rx_simple_no_fonasa[name=?]", "provider[rx_simple_no_fonasa]"

      assert_select "input#provider_rx_torax_fonasa[name=?]", "provider[rx_torax_fonasa]"

      assert_select "input#provider_rx_torax_no_fonasa[name=?]", "provider[rx_torax_no_fonasa]"

      assert_select "input#provider_rx_colorectal_fonasa[name=?]", "provider[rx_colorectal_fonasa]"

      assert_select "input#provider_rx_colorectal_no_fonasa[name=?]", "provider[rx_colorectal_no_fonasa]"

      assert_select "input#provider_resonancia_fonasa[name=?]", "provider[resonancia_fonasa]"

      assert_select "input#provider_resonancia_no_fonasa[name=?]", "provider[resonancia_no_fonasa]"

      assert_select "input#provider_tomografia_fonasa[name=?]", "provider[tomografia_fonasa]"

      assert_select "input#provider_tomografia_no_fonasa[name=?]", "provider[tomografia_no_fonasa]"

      assert_select "input#provider_laboratorio_rutina_basica_fonasa[name=?]", "provider[laboratorio_rutina_basica_fonasa]"

      assert_select "input#provider_laboratorio_rutina_basica_no_fonasa[name=?]", "provider[laboratorio_rutina_basica_no_fonasa]"

      assert_select "input#provider_tiempo_espera_medicina_general[name=?]", "provider[tiempo_espera_medicina_general]"

      assert_select "input#provider_tiempo_espera_pediatria[name=?]", "provider[tiempo_espera_pediatria]"

      assert_select "input#provider_tiempo_espera_cirugia_general[name=?]", "provider[tiempo_espera_cirugia_general]"

      assert_select "input#provider_tiempo_espera_ginecotocologia[name=?]", "provider[tiempo_espera_ginecotocologia]"

      assert_select "input#provider_tiempo_espera_cardiologia[name=?]", "provider[tiempo_espera_cardiologia]"

      assert_select "input#provider_conformidad_disponibilidad_agenda_2014[name=?]", "provider[conformidad_disponibilidad_agenda_2014]"

      assert_select "input#provider_conformidad_disponibilidad_agenda_2010[name=?]", "provider[conformidad_disponibilidad_agenda_2010]"

      assert_select "input#provider_evaluacion_tiempo_espera_sala_2014[name=?]", "provider[evaluacion_tiempo_espera_sala_2014]"

      assert_select "input#provider_evaluacion_tiempo_espera_sala_2010[name=?]", "provider[evaluacion_tiempo_espera_sala_2010]"

      assert_select "input#provider_facilidad_para_realizar_tramites_gestiones_2014[name=?]", "provider[facilidad_para_realizar_tramites_gestiones_2014]"

      assert_select "input#provider_facilidad_para_realizar_tramites_gestiones_2010[name=?]", "provider[facilidad_para_realizar_tramites_gestiones_2010]"

      assert_select "input#provider_disponibilidad_medicamentos_farmacia_2014[name=?]", "provider[disponibilidad_medicamentos_farmacia_2014]"

      assert_select "input#provider_disponibilidad_medicamentos_farmacia_2010[name=?]", "provider[disponibilidad_medicamentos_farmacia_2010]"

      assert_select "input#provider_informacion_sobre_derechos_2014[name=?]", "provider[informacion_sobre_derechos_2014]"

      assert_select "input#provider_informacion_sobre_derechos_2010[name=?]", "provider[informacion_sobre_derechos_2010]"

      assert_select "input#provider_queja_sugerencia_sabe_donde_dirigirse_2014[name=?]", "provider[queja_sugerencia_sabe_donde_dirigirse_2014]"

      assert_select "input#provider_queja_sugerencia_sabe_donde_dirigirse_2010[name=?]", "provider[queja_sugerencia_sabe_donde_dirigirse_2010]"

      assert_select "input#provider_satisfaccion_primer_nivel_atencion_2014[name=?]", "provider[satisfaccion_primer_nivel_atencion_2014]"

      assert_select "input#provider_satisfaccion_primer_nivel_atencion_2010[name=?]", "provider[satisfaccion_primer_nivel_atencion_2010]"

      assert_select "input#provider_satisfaccion_internacion_hospitalaria_2012[name=?]", "provider[satisfaccion_internacion_hospitalaria_2012]"

      assert_select "input#provider_medicos_generales_policlinica[name=?]", "provider[medicos_generales_policlinica]"

      assert_select "input#provider_medicos_de_familia_policlinica[name=?]", "provider[medicos_de_familia_policlinica]"

      assert_select "input#provider_medicos_pediatras_policlinica[name=?]", "provider[medicos_pediatras_policlinica]"

      assert_select "input#provider_medicos_ginecologos_policlinica[name=?]", "provider[medicos_ginecologos_policlinica]"

      assert_select "input#provider_auxiliares_enfermeria_policlinica[name=?]", "provider[auxiliares_enfermeria_policlinica]"

      assert_select "input#provider_licenciadas_enfermeria_policlinica[name=?]", "provider[licenciadas_enfermeria_policlinica]"

      assert_select "input#provider_cantidad_cad[name=?]", "provider[cantidad_cad]"

      assert_select "input#provider_medicina_general_cantidad_cad[name=?]", "provider[medicina_general_cantidad_cad]"

      assert_select "input#provider_medicina_familiar_cantidad_cad[name=?]", "provider[medicina_familiar_cantidad_cad]"

      assert_select "input#provider_pediatria_cantidad_cad[name=?]", "provider[pediatria_cantidad_cad]"

      assert_select "input#provider_ginecotologia_cantidad_cad[name=?]", "provider[ginecotologia_cantidad_cad]"

      assert_select "input#provider_medicina_interna_cantidad_cad[name=?]", "provider[medicina_interna_cantidad_cad]"

      assert_select "input#provider_medicina_intensiva_adultos_cantidad_cad[name=?]", "provider[medicina_intensiva_adultos_cantidad_cad]"

      assert_select "input#provider_medicina_intensiva_pediatrica_cantidad_cad[name=?]", "provider[medicina_intensiva_pediatrica_cantidad_cad]"

      assert_select "input#provider_neonatologia_cantidad_cad[name=?]", "provider[neonatologia_cantidad_cad]"

      assert_select "input#provider_cantidad_cad_psiquiatria_adultos[name=?]", "provider[cantidad_cad_psiquiatria_adultos]"

      assert_select "input#provider_cantidad_cad_psiquiatria_pediatrica[name=?]", "provider[cantidad_cad_psiquiatria_pediatrica]"

      assert_select "input#provider_especialidades_medicas_cantidad_cad[name=?]", "provider[especialidades_medicas_cantidad_cad]"

      assert_select "input#provider_cirugia_general_cantidad_cad[name=?]", "provider[cirugia_general_cantidad_cad]"

      assert_select "input#provider_medicina_emergencia_cantidad_cad[name=?]", "provider[medicina_emergencia_cantidad_cad]"

      assert_select "input#provider_reserva_presencial[name=?]", "provider[reserva_presencial]"

      assert_select "input#provider_reserva_telefonica[name=?]", "provider[reserva_telefonica]"

      assert_select "input#provider_reserva_web[name=?]", "provider[reserva_web]"

      assert_select "input#provider_reserva_consulta_medica[name=?]", "provider[reserva_consulta_medica]"

      assert_select "input#provider_realiza_recordatorio_cita[name=?]", "provider[realiza_recordatorio_cita]"

      assert_select "input#provider_realiza_caida_reserva_sin_confirmacion[name=?]", "provider[realiza_caida_reserva_sin_confirmacion]"

      assert_select "input#provider_comunicacion_usuario_suspension_modificacion[name=?]", "provider[comunicacion_usuario_suspension_modificacion]"

      assert_select "input#provider_private_insurance[name=?]", "provider[private_insurance]"

      assert_select "input#provider_estructura_primaria[name=?]", "provider[estructura_primaria]"

      assert_select "input#provider_estructura_secundaria[name=?]", "provider[estructura_secundaria]"

      assert_select "input#provider_estructura_ambulatorio[name=?]", "provider[estructura_ambulatorio]"

      assert_select "input#provider_estructura_urgencia[name=?]", "provider[estructura_urgencia]"

      assert_select "input#provider_logo[name=?]", "provider[logo]"

      assert_select "input#provider_search_name[name=?]", "provider[search_name]"

      assert_select "input#provider_vias_asignacion_citas[name=?]", "provider[vias_asignacion_citas]"
    end
  end
end
