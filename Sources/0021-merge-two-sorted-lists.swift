/// https://leetcode.com/problems/merge-two-sorted-lists/
struct MergeTwoSortedLists {
  func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var head: ListNode?
    var list1 = list1
    var list2 = list2
    var mergedList: ListNode? {
      didSet {
        if head == nil {
          head = mergedList
        }
      }
    }

    let consume: (inout ListNode?) -> Void = { list in
      mergedList?.next = list
      mergedList = list
      list = list?.next
    }

    while true {
      switch (list1, list2) {
      case let (node1?, node2?) where node1.val < node2.val:
        consume(&list1)
      case (.some, .some):
        consume(&list2)
      case (.some, .none):
        consume(&list1)
      case (.none, .some):
        consume(&list2)
      case (nil, nil):
        return head
      }
    }
  }
}
