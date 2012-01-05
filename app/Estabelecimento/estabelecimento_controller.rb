require 'rho/rhocontroller'
require 'helpers/browser_helper'

class EstabelecimentoController < Rho::RhoController
  include BrowserHelper

  # GET /Estabelecimento
  def index
    @estabelecimentos = Estabelecimento.find(:all)
    render :back => '/app'
  end

  # GET /Estabelecimento/{1}
  def show
    @estabelecimento = Estabelecimento.find(@params['id'])
    if @estabelecimento
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Estabelecimento/new
  def new
    @distrito =  Distrito.find(:all)
    @estabelecimento = Estabelecimento.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /Estabelecimento/{1}/edit
  def edit
    @distrito =  Distrito.find(:all)
    @estabelecimento = Estabelecimento.find(@params['id'])
    if @estabelecimento
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Estabelecimento/create
  def create
    @estabelecimento = Estabelecimento.create(@params['estabelecimento'])
    redirect :action => :index
  end

  # POST /Estabelecimento/{1}/update
  def update
    @estabelecimento = Estabelecimento.find(@params['id'])
    @estabelecimento.update_attributes(@params['estabelecimento']) if @estabelecimento
    redirect :action => :index
  end

  # POST /Estabelecimento/{1}/delete
  def delete
    @estabelecimento = Estabelecimento.find(@params['id'])
    @estabelecimento.destroy if @estabelecimento
    redirect :action => :index  
  end
end
