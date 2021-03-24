module WordWrap
  extend self

  def call(word, limit)
    return "" if word.nil?

    return word if word.size <= limit
    "#{word[0, limit]}-#{word[limit, word.size]}"
  end

end

RSpec.describe WordWrap do
  let(:cases) do
    {
      [nil, 10] => "",
      ["", 10] => "",
      ["word", 5] => "word",
      ["longword", 4] => "long-word",
      ["longerword", 6] => "longer-word",
    }
  end

  it "returns a list of words that conform to a pass limit" do
    cases.each_pair do |target, expectation|
      expect(WordWrap.(*target)).to eql expectation
    end
  end
end
