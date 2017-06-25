class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]

  # GET /sites
  def index
    @sites = Site.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /sites/1
  def show
  end

  # GET /sites/new
  def new
    @site = Site.new
  end

  # GET /sites/1/edit
  def edit
  end

  # POST /sites
  def create
    @site = Site.new(site_params)

    if @site.save
      redirect_to @site, notice: 'Site was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sites/1
  def update
    if @site.update(site_params)
      redirect_to @site, notice: 'Site was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sites/1
  def destroy
    @site.destroy
    redirect_to sites_url, notice: 'Site was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def site_params
      params.require(:site).permit(:direccion, :departamento, :localidad, :nivel, :servicio_de_urgencia, :alergista, :anestesiologia, :cardiologia, :cirugia, :cirugia_reparadora, :cirugia_vascular, :deportologia, :dermatologia, :endocrinolgia, :fisiatria, :gastroenterologia, :geriatria, :ginecologia, :hematologia, :infectologia, :medicina_general, :medicina_interna, :medicina_intensiva, :nefrologia, :neonatologia, :neumologia, :neurocirugia, :neurologia, :neuropediatria, :odontologia, :oncologia, :otorrinolaringologia, :pediatria, :psiquiatria, :psiquiatria_infantil, :reumatologia, :traumatologia, :urologia, :state_id, :provider_id, :created_at, :updated_at)
    end
end
