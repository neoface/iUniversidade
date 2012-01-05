require 'rho/rhocontroller'
require 'helpers/browser_helper'

class StatCandidaturaController < Rho::RhoController
  include BrowserHelper

  # GET /StatCandidatura
  def index
    @stat_candidaturum = StatCandidatura.find(:all)
    render :back => '/app'
  end

  # GET /StatCandidatura/{1}
  def show
    @stat_candidatura = StatCandidatura.find(@params['id'])
    if @stat_candidatura
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /StatCandidatura/new
  def new
    @stat_candidatura = StatCandidatura.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /StatCandidatura/{1}/edit
  def edit
    @stat_candidatura = StatCandidatura.find(@params['id'])
    if @stat_candidatura
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /StatCandidatura/create
  def create
    @stat_candidatura = StatCandidatura.create(@params['stat_candidatura'])
    redirect :action => :index
  end

  # POST /StatCandidatura/{1}/update
  def update
    @stat_candidatura = StatCandidatura.find(@params['id'])
    @stat_candidatura.update_attributes(@params['stat_candidatura']) if @stat_candidatura
    redirect :action => :index
  end

  # POST /StatCandidatura/{1}/delete
  def delete
    @stat_candidatura = StatCandidatura.find(@params['id'])
    @stat_candidatura.destroy if @stat_candidatura
    redirect :action => :index  
  end
end
