require "socket"

class BypassService
  def initialize options = {}
    @service_ip = options[:ip] || "127.0.0.1"
    @service_port = options[:port] || 5000
  end
  
  def bypass ip
    socket = TCPSocket.new @service_ip, @service_port
    socket.send ip.to_s, 0
    socket.close
  end
end