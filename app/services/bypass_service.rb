require "socket"

class BypassService
  def bypass ip
	Rails.logger.debug "bypass #{ip}"
	`sudo bypass.sh #{ip}`
  end
end
