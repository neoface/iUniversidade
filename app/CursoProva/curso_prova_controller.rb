require 'rho/rhocontroller'
require 'helpers/browser_helper'

class CursoProvaController < Rho::RhoController
  include BrowserHelper

  # GET /CursoProva
  def index
    @curso_provas = CursoProva.find(:all)
    render :back => '/app'
  end

  # GET /CursoProva/{1}
  def show
    @curso_prova = CursoProva.find(@params['id'])
    if @curso_prova
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /CursoProva/new
  def new
    @curso_prova = CursoProva.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /CursoProva/{1}/edit
  def edit
    @curso_prova = CursoProva.find(@params['id'])
    if @curso_prova
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /CursoProva/create
  def create
    @curso_prova = CursoProva.create(@params['curso_prova'])
    redirect :action => :index
  end

  # POST /CursoProva/{1}/update
  def update
    @curso_prova = CursoProva.find(@params['id'])
    @curso_prova.update_attributes(@params['curso_prova']) if @curso_prova
    redirect :action => :index
  end

  # POST /CursoProva/{1}/delete
  def delete
    @curso_prova = CursoProva.find(@params['id'])
    @curso_prova.destroy if @curso_prova
    redirect :action => :index  
  end
end
