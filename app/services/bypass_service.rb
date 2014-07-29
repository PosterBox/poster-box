require "socket"

class BypassService
  def bypass ip
	Rails.logger.debug "bypass #{ip}"
	`sudo bypass.sh #{ip}`
  end

  def reset
	Rails.logger.debug "reset"
	`sudo setup.sh auto`
  end
end
