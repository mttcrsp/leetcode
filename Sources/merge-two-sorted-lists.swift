class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var initial: ListNode?
        var current: ListNode?
        var list1 = l1
        var list2 = l2

        while list1 != nil || list2 != nil {
            let next: ListNode?
            if list1 != nil, list2 == nil || list1!.val < list2!.val {
                next = list1; list1 = list1?.next
            } else {
                next = list2; list2 = list2?.next
            }

            if let result = initial {
                current?.next = next
                current = next
            } else {
                initial = next
                current = next
            }
        }

        return initial
    }
}
