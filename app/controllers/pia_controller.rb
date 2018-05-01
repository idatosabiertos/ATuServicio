class PiaController < ApplicationController
  layout 'atuservicio'
  autocomplete :pia, :titulo, full: true, limit: 15

  def index
    @title = 'Catálogo Prestaciones'

    if params[:category]
      search = params[:category]
      @pia = Pia.where('ancestry=? or pid =?', search, search).arrange
    else
      @pia = Pia.all.arrange
    end

    @categories = Pia.all.where(ancestry: nil).order(:pid)
  end

end