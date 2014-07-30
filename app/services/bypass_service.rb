require "socket"

class BypassService
  def bypass ip
    Rails.logger.debug "bypass #{ip}"
    `bypass.sh #{ip}`
  end

  def reset
    Rails.logger.debug "reset"
    `setup.sh auto`
  end
end
