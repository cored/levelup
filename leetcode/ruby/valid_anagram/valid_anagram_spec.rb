module ValidAnagram
  extend self

  def call(a, b)
    a.chars.sort == b.chars.sort
  end
end

describe ValidAnagram do
  it "validates if two strings are anagrams" do
    expect(ValidAnagram.call("ana©gram", "naga©ram")).to be_truthy
    expect(ValidAnagram.call("rat©", "c©ar")).to be_falsy
  end
end
