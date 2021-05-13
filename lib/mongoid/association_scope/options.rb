# frozen_string_literal: true

module Mongoid
  module AssociationScope
    module Options
      def self.included(base)
        begin
          old_verbose, $VERBOSE = $VERBOSE, nil
          (base::COMMON |= %i[scope]).freeze
        ensure
          $VERBOSE = old_verbose
        end
      end
    end
  end
end
