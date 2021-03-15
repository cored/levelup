module DutchNationalFlag
  extend self

  def call(colors)
    colors
    if colors.size > 1
      colors[1], colors[0] = colorsk
    end
  end

  # def call(colors)
  #   count_r, count_g, count_b = 0, 0, 0
  #   colors.each do |c|
  #     count_r += 1 if c == "R"
  #     count_g += 1 if c == "G"
  #     count_b += 1 if c == "B"
  #   end
  #   filler(colors, count_r, 0, "R")
  #   filler(colors, (count_r + count_g), count_r, "G")
  #   filler(colors, colors.size, (count_r + count_g), "B")
  # end

  # def filler(arry, counter, st_idx, to_fil)
  #   st_idx.upto(counter - 1) do |idx|
  #     arry[idx] = to_fil
  #   end
  #   arry
  # end
end

describe DutchNationalFlag do
  it "returns the right order for an array" do
    expect(DutchNationalFlag.call(%w[])).to match([])
    expect(DutchNationalFlag.call(%w[R])).to match(%w[R])
    expect(DutchNationalFlag.call(%w[R])).to match(%w[R])
    expect(DutchNationalFlag.call(%w[G R])).to match(%w[R G])
    # expect(DutchNationalFlag.call(%w[R R G B B B B R G G G G]))
    #   .to match(%w[R R R G G G G G B B B B])

    # expect(DutchNationalFlag.call(%w[G B G G R B R G]))
    #   .to match(%w[R R G G G G B B])
  end
end
