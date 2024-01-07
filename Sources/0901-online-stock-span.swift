import HeapModule

class StockSpanner {
  var stack: [(value: Int, index: Int)] = []

  init() {}

  func next(_ price: Int) -> Int {
    var span = 1
    while let top = stack.last, top.value <= price {
      span += top.index
      stack.removeLast()
    }
    stack.append((price, span))
    return span
  }
}
