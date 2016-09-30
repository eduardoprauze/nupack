module Nupack
    class Job

        attr_accessor :base_price, :required_personnel, :material_type

        def initialize(base_price, required_personnel, material_type)
          @base_price = base_price
          @required_personnel = required_personnel
          @material_type = material_type
        end

    end
end
