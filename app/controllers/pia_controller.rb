class PiaController < ApplicationController
  before_action :set_pium, only: [:show, :edit, :update, :destroy]

  # GET /pia
  def index
    if params[:search]
      search = params[:search];
      @pia = Pia.search_by_title_pid("#{search}").arrange(:order => :pid)
    else
      @pia = Pia.all.arrange(:order => :pid)
    end
  end

end