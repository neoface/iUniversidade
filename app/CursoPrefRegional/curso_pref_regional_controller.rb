require 'rho/rhocontroller'
require 'helpers/browser_helper'

class CursoPrefRegionalController < Rho::RhoController
  include BrowserHelper

  # GET /CursoPrefRegional
  def index
    @curso_pref_regionals = CursoPrefRegional.find(:all)
    render :back => '/app'
  end

  # GET /CursoPrefRegional/{1}
  def show
    @curso_pref_regional = CursoPrefRegional.find(@params['id'])
    if @curso_pref_regional
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /CursoPrefRegional/new
  def new
    @curso_pref_regional = CursoPrefRegional.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /CursoPrefRegional/{1}/edit
  def edit
    @curso_pref_regional = CursoPrefRegional.find(@params['id'])
    if @curso_pref_regional
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /CursoPrefRegional/create
  def create
    @curso_pref_regional = CursoPrefRegional.create(@params['curso_pref_regional'])
    redirect :action => :index
  end

  # POST /CursoPrefRegional/{1}/update
  def update
    @curso_pref_regional = CursoPrefRegional.find(@params['id'])
    @curso_pref_regional.update_attributes(@params['curso_pref_regional']) if @curso_pref_regional
    redirect :action => :index
  end

  # POST /CursoPrefRegional/{1}/delete
  def delete
    @curso_pref_regional = CursoPrefRegional.find(@params['id'])
    @curso_pref_regional.destroy if @curso_pref_regional
    redirect :action => :index  
  end
end
