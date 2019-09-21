module ValidAnagram
  extend self

  def call(a, b)
    a.chars.sort == b.chars.sort
  end
end

describe ValidAnagram do
  it "validates if two strings are anagrams" do
    expect(ValidAnagram.call("anagram", "nagaram")).to be_truthy
    expect(ValidAnagram.call("rat", "car")).to be_falsy
  end
end
