require 'rails_helper'

RSpec.describe "sites/show", type: :view do
  before(:each) do
    @site = assign(:site, Site.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Direccion/)
    expect(rendered).to match(/Departamento/)
    expect(rendered).to match(/Localidad/)
    expect(rendered).to match(/Nivel/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
