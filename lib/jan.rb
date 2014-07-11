require "jan/version"
require "jan/parser"
require "jan/check_digit_calculator"
require "jan/validator"

class Jan
  attr_accessor :code

  def initialize(code)
    @code = code
  end

  def valid?
    Validator.validate(@code)
  end

  def check_digit
    Parser.check_digit(@code)
  end

  def even_digits
    Parser.even_digits(@code)
  end

  def odd_digits
    Parser.odd_digits(@code)
  end
end
