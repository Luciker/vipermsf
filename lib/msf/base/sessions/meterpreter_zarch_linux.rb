# -*- coding: binary -*-


module Msf
module Sessions

###
#
# This class creates a platform-specific meterpreter session type
#
###
class Meterpreter_zarch_Linux < Msf::Sessions::Meterpreter
  def supports_ssl?
    false
  end
  def supports_zlib?
    false
  end
  def initialize(rstream, opts={})
    super
    self.base_platform = 'linux'
    self.base_arch = ARCH_ZARCH
  end
end

end
end

