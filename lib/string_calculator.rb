# frozen_string_literal: true

# StringCalculator implements the classic TDD kata:
class StringCalculator
  def add(str)
    return 0 if str.empty?
    numbers = str.split(",").map(&:to_i)
    numbers.sum
  end
end
