require 'rails_helper'

RSpec.describe "sites/index", type: :view do
  before(:each) do
    assign(:sites, [
      Site.create!(
        :direccion => "Direccion",
        :departamento => "Departamento",
        :localidad => "Localidad",
        :nivel => "Nivel",
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
        :provider_id => 2
      ),
      Site.create!(
        :direccion => "Direccion",
        :departamento => "Departamento",
        :localidad => "Localidad",
        :nivel => "Nivel",
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
        :provider_id => 2
      )
    ])
  end

  it "renders a list of sites" do
    render
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Departamento".to_s, :count => 2
    assert_select "tr>td", :text => "Localidad".to_s, :count => 2
    assert_select "tr>td", :text => "Nivel".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
