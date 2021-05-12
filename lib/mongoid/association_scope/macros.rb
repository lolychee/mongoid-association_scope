# frozen_string_literal: true

module Mongoid
  module AssociationScope
    module Macros
      extend ActiveSupport::Concern

      module ClassMethods
        %w[
          embedded_in
          embeds_many
          embeds_one
          belongs_to
          has_many
          has_and_belongs_to_many
          has_one
        ].each do |method_name|
          class_eval <<~METHOD, __FILE__, __LINE__ + 1
            def #{method_name}(name, scope = nil, **options, &block)
              options[:scope] = scope unless scope.nil?
              super(name, options, &block)
            end
          METHOD
        end
      end
    end
  end
end
