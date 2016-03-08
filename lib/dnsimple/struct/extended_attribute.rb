module Dnsimple
  module Struct

    class ExtendedAttribute < Base

      class Option < Base
        # The option name
        attr_accessor :title

        # The option value
        attr_accessor :value

        # A long description of the option
        attr_accessor :description
      end

      # The extended attribute name
      attr_accessor :name

      # A description of the extended attribute
      attr_accessor :description

      # Boolean indicating if the extended attribute is required
      attr_accessor :required

      def options
        @options ||= []
      end

      def options=(opts)
        @options = opts.map do |opt|
          ExtendedAttribute::Option.new(opt)
        end
      end

    end

  end
end
