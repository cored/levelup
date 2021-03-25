module RemoveVowels
  extend self

  VOWELS = %w|a e i o u|
  def call(str)
    str.chars.reject { |c| VOWELS.include? c }.join
  end

end

RSpec.describe RemoveVowels do
  let(:cases) do
    {
      "" => "",
      "b" => "b",
      "ab" => "b",
      "bba" => "bb",
      "aeb" => "b"
    }
  end

  it "remove the vowels from a given string" do
    cases.each_pair do |target, expectation|
      expect(RemoveVowels.(target)).to eql expectation
    end

  end


end
