module RemoveDups
  def self.call(nums)
    nums.size
  end
end

RSpec.describe RemoveDups do

  it 'removes duplicates in an array in place' do
    # expect(RemoveDups.call([])).to eql 0
    # expect(RemoveDups.call([1, 2])).to eql 2
    # expect(RemoveDups.call([1, 2, 3])).to eql 3
    # expect(RemoveDups.call([1, 1, 2])).to eql 2
    # expect(RemoveDups.call([0, 0, 1, 2, 3, 4])).to eql 5
    # expect(RemoveDups.call([0,0,1,1,1,2,2,3,3,4])).to eql 5
  end

end
