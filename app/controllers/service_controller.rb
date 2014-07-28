require "bypass_service"
class ServiceController < ApplicationController
  def bypass
    raise ArgumentError("no ip specifed") unless params.include? :ip
    render :text => (BypassService.new.bypass params[:ip]).gsub(/\n/,"<br/>")
  end
end
