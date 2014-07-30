class WelcomeController < ApplicationController
  def redirect
    @host = ENV["BOXHOST"] || "192.168.20.254"
  end
  
  def index 
    
  end
end
