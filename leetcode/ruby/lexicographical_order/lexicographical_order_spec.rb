module LexicographicalOrder
  extend self

  def call(arry)
    arry.each_with_object(Hash.new { |k, v| k[v] = [] }) do |kv, h|
      key, val = kv.split(/\s/)
      if h[key].empty?
        h[key] = [val, 1]
      else
        counter = h[key][1]
        max = h[key][0]
        h[key] = [[max, val].max, counter + 1]
      end
    end.map do |kv|
      "#{kv[0]}:#{kv[1][1]},#{kv[1][0]}"
    end
  end
end

describe LexicographicalOrder do
  it "returns the right order of things" do
    expect(LexicographicalOrder
      .call(["key1 abcd",
             "key2 zzz",
             "key1 hello",
             "key3 world",
             "key1 hello"])).to match_array([
               "key3:1,world",
               "key2:1,zzz",
               "key1:3,hello"
             ])
  end
end
