# die_spec.rb
require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'die'

Minitest::Reporters.use! #whether or not this line is needed is b/c of how the gem is written (e.g. the pride gem doesn't require the line)

describe "Testing the Die Class" do
  it "I can create a die" do #each it block is a test case
    new_die = Die.new
    expect (new_die.class).must_equal Die
  end

  it "A die must show greater than 0 and less than 7" do
    new_die = Die.new
    expect(new_die.showing).must_be :>, 0
    expect(new_die.showing).must_be :<, 7
    #expect is not necessary new_die.showing.must_be :>, 0 would also work
  end

  it "A Die can be rolled" do
    new_die = Die.new

    counter_hash = { 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0}

    100.times do
      new_die.roll
      counter_hash[new_die.showing] += 1
      end

    counter_hash[1].wont_equal 100
    counter_hash[2].wont_equal 100
    counter_hash[3].wont_equal 100
    counter_hash[4].wont_equal 100
    counter_hash[5].wont_equal 100
    counter_hash[6].wont_equal 100

  end


end
