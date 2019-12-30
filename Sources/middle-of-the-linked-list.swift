class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }

        var current = head
        var middle = head
        var isEven = false
        while let next = current.next {
            current = next
            isEven.toggle()

            if isEven {
                middle = middle.next!
            }
        }
        return middle
    }
}
