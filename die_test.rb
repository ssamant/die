# die_test.rb
require 'minitest/autorun' #require tells ruby that you are going to use these gems
require 'minitest/reporters' #this one is optional (it adds color)
Minitest::Reporters.use!


require_relative 'die'  #seems to be ruby convention to use single-quotes for require statements

class TestDie < Minitest::Unit::TestCase #class TestDies is a set of Minitest unit tests
  def test_creation_of_die #all methods that are testing should start with word test
    new_die = Die.new
    assert new_die.class == Die, "A Die cannot be created as an instance of Die" #assert is a special method that takes 2 params. 1st is T/F, 2nd is optional
  end

  def test_showing_number_must_be_less_than_7
    new_die = Die.new
    assert new_die.showing < 7
  end

  def test_showing_number_must_be_greater_than_0
    new_die = Die.new
    assert new_die.showing > 0
    # assert_operator die.showing, :>, 0 another assert method optional
    # assert_nil die <-- the value of die should be nil
  end



end
