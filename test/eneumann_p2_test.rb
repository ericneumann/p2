# frozen_string_literal: true

require "test_helper"

class EneumannP2Test < Minitest::Test
  
  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "raceCAR".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_palindrome
    assert 12345654321.palindrome?
  end

  def test_integer_non_palindrome
    refute 1234.palindrome?
  end

  def test_whitespace_not_palindrome
    refute "         ".palindrome?
  end
  
end
