require "bypass_service"
class ServiceController < ApplicationController
  def bypass
    remote_ip = params[:ip] || request.remote_ip
    render :text => (BypassService.new.bypass remote_ip).gsub(/\n/,"<br/>")
  end

  def reset
    render :text => (BypassService.new.reset).gsub(/\n/,"<br/>")
  end
end
