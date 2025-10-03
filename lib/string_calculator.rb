# frozen_string_literal: true

# StringCalculator implements the classic TDD kata:
class StringCalculator
  def add(str)
    return 0 if str.empty?

    delimiter, numbers_str = extract_delimiter(str)
    numbers = parse_numbers(numbers_str, delimiter)

    validate_negatives!(numbers)

    numbers.sum
  end

  private

  def extract_delimiter(str)
    if str.start_with?("//")
      header, numbers_part = str.split("\n", 2)
      custom_delimiter = header[2..]
      [Regexp.new(Regexp.escape(custom_delimiter)), numbers_part]
    else
      [/[,|\n]/, str]
    end
  end

  def parse_numbers(str, delimiter)
    str.split(delimiter).map(&:to_i)
  end

  def validate_negatives!(numbers)
    negatives = numbers.select(&:negative?)
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  end
end
