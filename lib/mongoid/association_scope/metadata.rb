module Mongoid
  module AssociationScope
    module Metadata
      def scope
        self[:scope]
      end

      def scope?
        scope.is_a?(Proc)
      end

      def scoped
        scope? ? klass.criteria.instance_exec(&scope) : klass.criteria
      end
    end
  end
end
