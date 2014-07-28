require "bypass_service"
class ServiceController < ApplicationController
  def bypass
    raise ArgumentError("no ip specifed") unless params.include? :ip
    BypassService.new.bypass params[:ip]
    render :text => "#{params[:ip]} bypassed"
  end
end
