class PiaController < ApplicationController
  layout 'atuservicio'

  before_action :set_pium, only: [:show, :edit, :update, :destroy]

  # GET /pia
  def index
    @title = 'Catálogo Prestaciones'

    if params[:category]
      search = params[:category]
      @pia = Pia.where('ancestry=? or pid =?', search, search).arrange

    elsif params[:search]
      search = params[:search];
      @pia = Pia.search_by_title_pid("#{search}").arrange
    
    else
      @pia = Pia.all.arrange
    end

    @categories = Pia.all.where(ancestry: nil).order(:pid)
  end

end