module RomanToInt
  extend self
  ROMANS = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
  }

  def call(s)
    nums = s.chars.map do |c|
      ROMANS[c]
    end
    max = nums.max
    require 'pry'; binding.pry
    return nums.reduce(0, :+) if max == nums.first
    nums.reduce(0) do |num, n|
      (num - n).abs
    end
  end
end

describe RomanToInt do
  it "returns the integer representation of a roman number" do
    # expect(RomanToInt.call("I")).to eql(1)
    # expect(RomanToInt.call("II")).to eql(2)
    # expect(RomanToInt.call("III")).to eql(3)
    # expect(RomanToInt.call("IV")).to eql(4)
    # expect(RomanToInt.call("V")).to eql(5)
    # expect(RomanToInt.call("VI")).to eql(6)
    # expect(RomanToInt.call("IX")).to eql(9)
    # expect(RomanToInt.call("X")).to eql(10)
    # expect(RomanToInt.call("XX")).to eql(20)
    # expect(RomanToInt.call("XXX")).to eql(30)
    expect(RomanToInt.call("XXXIV")).to eql(34)
  end
end
