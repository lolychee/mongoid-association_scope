module Mongoid
  module AssociationScope
    module Referenced
      module Scoped
        def criteria(metadata, object, type = nil)
          metadata.scoped(super)
        end
      end
    end
  end
end
