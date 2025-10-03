# frozen_string_literal: true

# StringCalculator implements the classic TDD kata:
class StringCalculator
  def add(str)
    return 0 if str.empty?

    delimiter = /,|\n/
    if str.start_with?("//")
      header, numbers_part = str.split("\n", 2)
      custom_delimiter = header[2..]
      delimiter = Regexp.new(Regexp.escape(custom_delimiter))
      str = numbers_part
    end

    numbers = str.split(delimiter).map(&:to_i)
    negatives = numbers.select(&:negative?)
    if negatives.any?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end

    numbers.sum
  end
end
