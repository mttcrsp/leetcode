
class MinStack {
    // You could make two different trade offs in the
    // implementation of this type based on what its desired
    // usage characteristics are.
    //
    // You need to store two different informations the
    // insertion order and the sort order.
    //
    // Based on the data that this will hold you may decide
    // how much of the sorting information you want to preserve
    // by giving up some memory.

    // A type independent implementation would store the indices
    // of the minimum elements instead of the element themselves.
    private var sortedArray: [Int] = []
    private var array: [Int] = []

    init() {}

    func push(_ x: Int) {
        array.append(x)
        sortedArray.append(x)
        sortedArray.sort()
    }

    func pop() {
        guard !isEmpty else { return }

        let value = array.removeLast()
        let index = sortedArray.firstIndex(of: value)!
        sortedArray.remove(at: index)
    }

    func top() -> Int { // Int?
        return array.last ?? 0
    }

    func getMin() -> Int { // Int?
        return sortedArray.first ?? 0
    }

    private var isEmpty: Bool {
        return array.isEmpty
    }
}
