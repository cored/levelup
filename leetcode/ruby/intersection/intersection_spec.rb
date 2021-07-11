module Intersection
  extend self

  def call(nums1, nums2)
    idx = 0
    jdx = 0
    aux = []
    while idx < nums1.size && jdx < nums2.size
      if nums1[idx] < nums2[jdx]
        idx += 1
      elsif nums1[idx] > nums2[jdx]
        jdx += 1
      else
        aux.push(nums1[idx])
        idx += 1
        jdx += 1
      end
    end
    aux
  end
end

describe Intersection do
  it "returns the intersected values of two arrays" do
    expect(Intersection.call([], [])).to match []
    expect(Intersection.call([1], [])).to match []
    expect(Intersection.call([], [1])).to match []
    expect(Intersection.call([1], [1])).to match [1]
    expect(Intersection.call([1], [2])).to match []
    expect(Intersection.call([1], [1, 2])).to match [1]
    expect(Intersection.call([1, 2], [1, 2])).to match [1, 2]
    expect(Intersection.call([1, 2, 3], [2, 2, 3])).to match [2, 3]
  end
end
