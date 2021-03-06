require 'typesafe_enum'

module Stash
  module Wrapper
    # Controlled vocabulary for {Embargo#type}
    class EmbargoType < TypesafeEnum::Base
      [:NONE, :DOWNLOAD, :DESCRIPTION].each { |t| new t }
    end
  end
end
