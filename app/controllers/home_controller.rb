class HomeController < ApplicationController
  include Rails.application.routes.url_helpers

  
  NOME_RUA = 'Imaculada Conceição, 1174 - Prado Velho'
  ONIBUS = [
    { name: '050 - INTERBAIRROS V', number: '050', delay: 1 },
    { name: '165 - UNIVERSIDADES', number: '165', delay: 5 },
    { name: '175 - BOM RETIRO / PUC', number: '175', delay: 15 },
    { name: '471 - V. SÃO PAULO', number: '471', delay: 23 },
    { name: '472 - UBERABA', number: '472', delay: 35 },
    { name: '475 - CANAL BELÉM', number: '475', delay: 42 },
    { name: '614 - FAZENDINHA / PUC', number: '614', delay: 26 }
  ]
  
  before_action :load_data

  def index;end

  def help;end

  def info
    @number = params[:number]
  end

  def next_bus;end

  def repair;end

  def list_bus;end

  def repair_confirmation
    @protocolo = rand(320..999).to_s.rjust(10, '0')
    @problem = params[:problem]
  end

  def sucesso
    @text = params[:text]
  end

  def load_data
    @spot_name = NOME_RUA
    @list_bus = ONIBUS

    @bus = ONIBUS.detect { |b| b[:number] == params[:number] } if params[:number].present?
  end
end