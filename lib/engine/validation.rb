# frozen_string_literal: true

module Engine
  class Validation < Dry::Validation::Contract
    schema do
      required(:email).value(:string)
      required(:age).value(:integer)
    end
    def call; end
  end
end
