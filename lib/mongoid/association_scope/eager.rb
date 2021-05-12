module Mongoid
  module AssociationScope
    module Eager
      def each_loaded_document(&block)
        criteria = @metadata.scoped.any_in(key => keys_from_docs)
        criteria.inclusions = criteria.inclusions - [@metadata]
        criteria.each(&block)
      end
    end
  end
end
