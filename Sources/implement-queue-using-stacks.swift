final class MyQueue {
    private var stack = Stack<Int>()

    init() {}

    func push(_ value: Int) {
        stack.push(value)
    }

    func pop() -> Int {
        let otherStack = Stack<Int>()
        while stack.count > 1 { otherStack.push(stack.pop()) }
        let value = stack.pop()
        while !otherStack.isEmpty { stack.push(otherStack.pop()) }
        return value
    }

    func peek() -> Int {
        let otherStack = Stack<Int>()
        while stack.count > 1 { otherStack.push(stack.pop()) }
        let value = stack.peek()
        while !otherStack.isEmpty { stack.push(otherStack.pop()) }
        return value
    }

    func empty() -> Bool {
        return stack.isEmpty
    }
}

private final class Stack<T> {
    private var array: [T] = []

    func push(_ value: T) {
        array.append(value)
    }

    func pop() -> T {
        return array.removeLast()
    }

    func peek() -> T {
        return array.last!
    }

    var count: Int {
        return array.count
    }

    var isEmpty: Bool {
        return array.isEmpty
    }
}
