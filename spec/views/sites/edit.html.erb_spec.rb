require 'rails_helper'

RSpec.describe "sites/edit", type: :view do
  before(:each) do
    @site = assign(:site, Site.create!(
      :direccion => "MyString",
      :departamento => "MyString",
      :localidad => "MyString",
      :nivel => "MyString",
      :servicio_de_urgencia => false,
      :alergista => false,
      :anestesiologia => false,
      :cardiologia => false,
      :cirugia => false,
      :cirugia_reparadora => false,
      :cirugia_vascular => false,
      :deportologia => false,
      :dermatologia => false,
      :endocrinolgia => false,
      :fisiatria => false,
      :gastroenterologia => false,
      :geriatria => false,
      :ginecologia => false,
      :hematologia => false,
      :infectologia => false,
      :medicina_general => false,
      :medicina_interna => false,
      :medicina_intensiva => false,
      :nefrologia => false,
      :neonatologia => false,
      :neumologia => false,
      :neurocirugia => false,
      :neurologia => false,
      :neuropediatria => false,
      :odontologia => false,
      :oncologia => false,
      :otorrinolaringologia => false,
      :pediatria => false,
      :psiquiatria => false,
      :psiquiatria_infantil => false,
      :reumatologia => false,
      :traumatologia => false,
      :urologia => false,
      :state_id => 1,
      :provider_id => 1
    ))
  end

  it "renders the edit site form" do
    render

    assert_select "form[action=?][method=?]", site_path(@site), "post" do

      assert_select "input#site_direccion[name=?]", "site[direccion]"

      assert_select "input#site_departamento[name=?]", "site[departamento]"

      assert_select "input#site_localidad[name=?]", "site[localidad]"

      assert_select "input#site_nivel[name=?]", "site[nivel]"

      assert_select "input#site_servicio_de_urgencia[name=?]", "site[servicio_de_urgencia]"

      assert_select "input#site_alergista[name=?]", "site[alergista]"

      assert_select "input#site_anestesiologia[name=?]", "site[anestesiologia]"

      assert_select "input#site_cardiologia[name=?]", "site[cardiologia]"

      assert_select "input#site_cirugia[name=?]", "site[cirugia]"

      assert_select "input#site_cirugia_reparadora[name=?]", "site[cirugia_reparadora]"

      assert_select "input#site_cirugia_vascular[name=?]", "site[cirugia_vascular]"

      assert_select "input#site_deportologia[name=?]", "site[deportologia]"

      assert_select "input#site_dermatologia[name=?]", "site[dermatologia]"

      assert_select "input#site_endocrinolgia[name=?]", "site[endocrinolgia]"

      assert_select "input#site_fisiatria[name=?]", "site[fisiatria]"

      assert_select "input#site_gastroenterologia[name=?]", "site[gastroenterologia]"

      assert_select "input#site_geriatria[name=?]", "site[geriatria]"

      assert_select "input#site_ginecologia[name=?]", "site[ginecologia]"

      assert_select "input#site_hematologia[name=?]", "site[hematologia]"

      assert_select "input#site_infectologia[name=?]", "site[infectologia]"

      assert_select "input#site_medicina_general[name=?]", "site[medicina_general]"

      assert_select "input#site_medicina_interna[name=?]", "site[medicina_interna]"

      assert_select "input#site_medicina_intensiva[name=?]", "site[medicina_intensiva]"

      assert_select "input#site_nefrologia[name=?]", "site[nefrologia]"

      assert_select "input#site_neonatologia[name=?]", "site[neonatologia]"

      assert_select "input#site_neumologia[name=?]", "site[neumologia]"

      assert_select "input#site_neurocirugia[name=?]", "site[neurocirugia]"

      assert_select "input#site_neurologia[name=?]", "site[neurologia]"

      assert_select "input#site_neuropediatria[name=?]", "site[neuropediatria]"

      assert_select "input#site_odontologia[name=?]", "site[odontologia]"

      assert_select "input#site_oncologia[name=?]", "site[oncologia]"

      assert_select "input#site_otorrinolaringologia[name=?]", "site[otorrinolaringologia]"

      assert_select "input#site_pediatria[name=?]", "site[pediatria]"

      assert_select "input#site_psiquiatria[name=?]", "site[psiquiatria]"

      assert_select "input#site_psiquiatria_infantil[name=?]", "site[psiquiatria_infantil]"

      assert_select "input#site_reumatologia[name=?]", "site[reumatologia]"

      assert_select "input#site_traumatologia[name=?]", "site[traumatologia]"

      assert_select "input#site_urologia[name=?]", "site[urologia]"

      assert_select "input#site_state_id[name=?]", "site[state_id]"

      assert_select "input#site_provider_id[name=?]", "site[provider_id]"
    end
  end
end
