class HomeController < ApplicationController
  include Rails.application.routes.url_helpers

  def index;end

  def help;end

  def info;end

  def next_bus;end

  def repair;end

  def repair_confirmation
    @protocolo = rand(320..999).to_s.rjust(10, '0')
    @problem = params[:problem]
  end

  def sucesso
    @text = params[:text]
  end
end