
class MyCircularDeque {
    private var k: Int
    private var array: [Int]

    init(_ k: Int) {
        self.k = k
        array = []
        array.reserveCapacity(k)
    }

    func insertFront(_ value: Int) -> Bool {
        guard !isFull() else { return false }
        array.insert(value, at: 0)
        return true
    }

    func insertLast(_ value: Int) -> Bool {
        guard !isFull() else { return false }
        array.append(value)
        return true
    }

    func deleteFront() -> Bool {
        guard !isEmpty() else { return false }
        array.removeFirst()
        return true
    }

    func deleteLast() -> Bool {
        guard !isEmpty() else { return false }
        array.removeLast()
        return true
    }

    func getFront() -> Int {
        guard !isEmpty() else { return -1 }
        return array.first!
    }

    func getRear() -> Int {
        guard !isEmpty() else { return -1 }
        return array.last!
    }

    func isEmpty() -> Bool {
        return array.isEmpty
    }

    func isFull() -> Bool {
        return array.count >= k
    }
}
