module MergeTwoSortedLists
  extend self

  def call(l1, l2)
    merge(l1, l2)
  end

  def merge(l1, l2, res = ListNode.new(nil))
    return res if l1.nil? || l2.nil?
    res.val = l1.val
  end
end

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
  end
end

describe MergeTwoSortedLists do
  it "merge two linked lists" do
    l1 = ListNode.new(1)
    l1.next = ListNode.new(2)
    l2 = ListNode.new(3)
    l2.next = ListNode.new(4)
    expect(
      MergeTwoSortedLists.call(l1, l2).to_a
    ).to match([1, 3, 2, 4])
  end
end
