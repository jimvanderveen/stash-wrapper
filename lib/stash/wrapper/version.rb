require 'xml/mapping'
require 'xml/mapping_extensions'

module Stash
  module Wrapper
    # Mapping for `<st:version>`
    class Version
      include ::XML::Mapping
      numeric_node :version_number, 'version_number'
      date_node :date, 'date', zulu: true
      text_node :note, 'note', default_value: nil

      # Creates a new {Version}
      # @param number [Integer] the version number
      # @param date [Date] the date the new version was created
      # @param note [String, nil] the (optional) version note
      def initialize(number:, date:, note: nil)
        self.version_number = number
        self.date = date
        self.note = note
      end
    end
  end
end
