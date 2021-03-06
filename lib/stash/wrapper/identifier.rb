require 'xml/mapping_extensions'
require_relative 'identifier_type'

module Stash
  module Wrapper

    # Mapping class for `<st:identifier>`
    class Identifier
      include ::XML::Mapping
      typesafe_enum_node :type, '@type', class: IdentifierType, default_value: nil
      text_node :value, '.', default_value: nil

      # Creates a new {Identifier}
      def initialize(type:, value:)
        self.type = type
        self.value = value
      end
    end

  end
end
