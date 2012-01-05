require 'rho/rhocontroller'
require 'helpers/browser_helper'

class VCursoController < Rho::RhoController
  include BrowserHelper

  # GET /VCurso
  def index
    @v_cursos = VCurso.find(:all)
    render :back => '/app'
  end

  # GET /VCurso/{1}
  def show
    @v_curso = VCurso.find(@params['id'])
    if @v_curso
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /VCurso/new
  def new
    @v_curso = VCurso.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /VCurso/{1}/edit
  def edit
    @v_curso = VCurso.find(@params['id'])
    if @v_curso
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /VCurso/create
  def create
    @v_curso = VCurso.create(@params['v_curso'])
    redirect :action => :index
  end

  # POST /VCurso/{1}/update
  def update
    @v_curso = VCurso.find(@params['id'])
    @v_curso.update_attributes(@params['v_curso']) if @v_curso
    redirect :action => :index
  end

  # POST /VCurso/{1}/delete
  def delete
    @v_curso = VCurso.find(@params['id'])
    @v_curso.destroy if @v_curso
    redirect :action => :index  
  end
  
  def filter_cursos_by_distrito
    @graus = Grau.find(:all)
    @distritos =  Distrito.find(:all)
  end

  def list_cursos_by_distrito
      @id_distrito =  @params['id_distrito']
      @v_curso_by_distrito = VCurso.find(:all,:conditions => {'id_distrito' => @id_distrito},:order => 'id_distrito')
      render
  end
    
 #   @v_curso = VCurso.find(@params['id_distrito'])
  #  render :back => '/app'
# 'grau' => @params['grau'],
    #@v_curso = VCurso.find(:all);
    #, :conditions =>{'id_distrito'=> @params['id_distrito']})
  # end
end
