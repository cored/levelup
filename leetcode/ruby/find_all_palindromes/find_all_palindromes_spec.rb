module FindAllPalindromes
  extend self

  def call(s)
    return [s].reject(&:empty?) if s.empty? || s.size == 1
    chars = s.chars
    find_all_palindromes_for([s])
  end

  def find_all_palindromes_for(res, palindromes = [])
    return res if res.include?(palindromes)

  end
end

describe FindAllPalindromes do
  it "return all palindromes giving a string" do
    expect(FindAllPalindromes.call("")).to match_array []
    expect(FindAllPalindromes.call("a")).to match_array ["a"]
    expect(FindAllPalindromes.call("aa")).to match_array ["a|a", "aa"]
    expect(FindAllPalindromes.call("ab")).to match_array ["a", "b", "ab"]
  end
end
