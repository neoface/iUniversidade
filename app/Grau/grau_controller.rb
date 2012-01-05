require 'rho/rhocontroller'
require 'helpers/browser_helper'

class GrauController < Rho::RhoController
  include BrowserHelper

  # GET /Grau
  def index
    @graus = Grau.find(:all)
    render :back => '/app'
  end

  # GET /Grau/{1}
  def show
    @grau = Grau.find(@params['id'])
    if @grau
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Grau/new
  def new
    @grau = Grau.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /Grau/{1}/edit
  def edit
    @grau = Grau.find(@params['id'])
    if @grau
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Grau/create
  def create
    @grau = Grau.create(@params['grau'])
    redirect :action => :index
  end

  # POST /Grau/{1}/update
  def update
    @grau = Grau.find(@params['id'])
    @grau.update_attributes(@params['grau']) if @grau
    redirect :action => :index
  end

  # POST /Grau/{1}/delete
  def delete
    @grau = Grau.find(@params['id'])
    @grau.destroy if @grau
    redirect :action => :index  
  end
end
