module Mongoid
  module AssociationScope
    module Referenced
      module Scoped
        def criteria(metadata, object, type = nil)
          metadata.scoped.merge(super)
        end
      end
    end
  end
end
