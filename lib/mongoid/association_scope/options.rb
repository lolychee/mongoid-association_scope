# frozen_string_literal: true

module Mongoid
  module AssociationScope
    module Options
      def self.included(base)
        (base::COMMON |= %i[scope]).freeze
      end
    end
  end
end
