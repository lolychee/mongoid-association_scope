module Mongoid
  module AssociationScope
    module Metadata
      def scope
        self[:scope]
      end

      def scope?
        scope.is_a?(Proc)
      end

      def scoped(criteria = klass.criteria)
        scope? ? criteria.instance_exec(&scope) : criteria
      end
    end
  end
end
