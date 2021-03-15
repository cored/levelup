class String
  def to_decimal
    chars.reverse.map.with_index do |c, i|
      (2**i) * c.to_i
    end.sum
  end
end

module AddBinary
  extend self

  def call(num1, num2)
    (num1.to_decimal + num2.to_decimal).to_s(2)
  end
end

describe AddBinary do
  it "add two binary strings" do
    expect(AddBinary.call("11", "1")).to eql "100"
    expect(AddBinary.call("1010", "1011")).to eql "10101"
  end
end
