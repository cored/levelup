module MergeSortedArrays
  extend self

  def call(nums1, n, nums2, m)
    merge(nums1[0, n], nums2[0, m], n + m)
  end

  def merge(nums1, nums2, aux_size, aux = [], idx = 0, jdx = 0)
    return aux if aux.size == aux_size
    if nums1[idx] < nums2[jdx]
      aux << nums1[idx]
      idx += 1
    elsif nums1[idx] > nums2[jdx]
      aux << nums2[jdx]
      jdx += 1
    else
      aux << nums2[jdx]
      idx += 1
      jdx += 1
    end
    merge(nums1, nums2, aux_size, aux, idx, jdx)
  end
end

describe MergeSortedArrays do
  it "merge two sorted arrays" do
    expect(
      MergeSortedArrays.call([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3)
    ).to match([1, 2, 2, 3, 5, 6])
  end
end
