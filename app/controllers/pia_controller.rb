class PiaController < ApplicationController
  before_action :set_pium, only: [:show, :edit, :update, :destroy]

  # GET /pia
  def index
    @pia = Pia.all
  end

  # GET /pia/1
  def show
  end

  # GET /pia/new
  def new
    @pium = Pium.new
  end

  # GET /pia/1/edit
  def edit
  end

  # POST /pia
  def create
    @pium = Pium.new(pium_params)

    if @pium.save
      redirect_to @pium, notice: 'Pium was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pia/1
  def update
    if @pium.update(pium_params)
      redirect_to @pium, notice: 'Pium was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pia/1
  def destroy
    @pium.destroy
    redirect_to pia_url, notice: 'Pium was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pium
      @pium = Pium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pium_params
      params[:pium]
    end
end
