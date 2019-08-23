module ValidPalindrome
  def self.call(s)
    s = s.downcase.gsub(/\W+/, "")
    mid = (s.size - 1) / 2
    jdx = s.size - 1
    idx = 0
    while idx <= mid && jdx >= mid
      return false if s[idx] != s[jdx]
      idx += 1
      jdx -= 1
    end
    true
  end
end

describe ValidPalindrome do
  it "returns true for valid palindrome" do
    expect(ValidPalindrome.call("race a car")).to be_falsy
  end
end
