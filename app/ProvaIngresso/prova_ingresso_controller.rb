require 'rho/rhocontroller'
require 'helpers/browser_helper'

class ProvaIngressoController < Rho::RhoController
  include BrowserHelper

  # GET /ProvaIngresso
  def index
    @prova_ingressos = ProvaIngresso.find(:all)
    render :back => '/app'
  end

  # GET /ProvaIngresso/{1}
  def show
    @prova_ingresso = ProvaIngresso.find(@params['id'])
    if @prova_ingresso
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /ProvaIngresso/new
  def new
    @prova_ingresso = ProvaIngresso.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /ProvaIngresso/{1}/edit
  def edit
    @prova_ingresso = ProvaIngresso.find(@params['id'])
    if @prova_ingresso
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /ProvaIngresso/create
  def create
    @prova_ingresso = ProvaIngresso.create(@params['prova_ingresso'])
    redirect :action => :index
  end

  # POST /ProvaIngresso/{1}/update
  def update
    @prova_ingresso = ProvaIngresso.find(@params['id'])
    @prova_ingresso.update_attributes(@params['prova_ingresso']) if @prova_ingresso
    redirect :action => :index
  end

  # POST /ProvaIngresso/{1}/delete
  def delete
    @prova_ingresso = ProvaIngresso.find(@params['id'])
    @prova_ingresso.destroy if @prova_ingresso
    redirect :action => :index  
  end
end
