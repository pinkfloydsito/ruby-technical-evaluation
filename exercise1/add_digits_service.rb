class AddDigitsService
    def initialize(value:)
        @value = value
    end
    
    def call
        result = @value

        result = result.digits.sum until result < 10

        result
    end
end