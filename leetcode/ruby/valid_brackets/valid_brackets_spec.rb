module ValidBrackets
  extend self

  BRACKETS = {
    "{" => "}",
    "(" => ")",
    "[" => "]",
  }
  def call(str)
    return false if str.size == 1
    pairs = str.chars.each_with_object([]) do |c, pairs|
      if BRACKETS.key?(c)
        pairs << c
      else
        opening = BRACKETS[pairs.pop]
        return false if opening != c
      end
    end
    pairs.empty?
  end
end

describe ValidBrackets do
  it "returns if a string with brackets is valid" do
    expect(described_class.call("")).to eql true
    expect(described_class.call("(")).to eql false
    expect(described_class.call("(]")).to eql false
    expect(described_class.call("()")).to eql true
    expect(described_class.call("(){")).to eql false
    expect(described_class.call("(){}")).to eql true
    expect(described_class.call("(){}")).to eql true
    expect(described_class.call("(){}[")).to eql false
    expect(described_class.call("(){}[]")).to eql true
    expect(described_class.call("({}([]")).to eql false
  end
end
