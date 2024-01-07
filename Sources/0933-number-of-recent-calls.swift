import Collections

class RecentCounter {
  var deque: Deque<Int> = []

  init() {}

  func ping(_ t: Int) -> Int {
    deque.append(t)
    while let first = deque.first, !(t-3000 ... t).contains(first) {
      deque.removeFirst()
    }

    return deque.count
  }
}
