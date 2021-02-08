# frozen_string_literal: true

require_relative "eneumann_p2/version"

module EneumannP2
  class Error < StandardError; end

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.length < 1
      return false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z\d+]/i).join.downcase
    end
end

class String
  include EneumannP2
end

class Integer
  include EneumannP2
end