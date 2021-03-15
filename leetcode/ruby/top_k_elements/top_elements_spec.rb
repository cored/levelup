describe TopElements do
  it "returns the top K elements on a stream of integers" do
    expect(TopElements.call([1, 2, 3]))
  end
end
