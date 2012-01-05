require 'rho/rhocontroller'
require 'helpers/browser_helper'

class DistritoController < Rho::RhoController
  include BrowserHelper

  # GET /Distrito
  def index
    @distritos = Distrito.find(:all)
    render :back => '/app'
  end

  # GET /Distrito/{1}
  def show
    @distrito = Distrito.find(@params['id'])
    if @distrito
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Distrito/new
  def new
    @distrito = Distrito.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /Distrito/{1}/edit
  def edit
    @distrito = Distrito.find(@params['id'])
    if @distrito
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Distrito/create
  def create
    @distrito = Distrito.create(@params['distrito'])
    redirect :action => :index
  end

  # POST /Distrito/{1}/update
  def update
    @distrito = Distrito.find(@params['id'])
    @distrito.update_attributes(@params['distrito']) if @distrito
    redirect :action => :index
  end

  # POST /Distrito/{1}/delete
  def delete
    @distrito = Distrito.find(@params['id'])
    @distrito.destroy if @distrito
    redirect :action => :index  
  end
end
