module Nupack
  class Job
    attr_accessor :base_price, :required_personnel, :material_type

    def initialize(base_price, required_personnel, material_type)
      @base_price = base_price
      @required_personnel = required_personnel
      @material_type = material_type
      validate!
    end

    private
    def validate!
      raise ArgumentError.new("Base Price must not be negative") unless @base_price > 0
      raise ArgumentError.new("Required Personnel must not be negative") unless @required_personnel >= 0
      raise ArgumentError.new("Required Personnel must be a whole number") unless @required_personnel % 1 == 0
    end
  end
end
