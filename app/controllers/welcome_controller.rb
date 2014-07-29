class WelcomeController < ApplicationController
  def redirect
    @host = ENV["HOST"] || "127.0.0.1:3000"
  end
  
  def index 
    
  end
end
