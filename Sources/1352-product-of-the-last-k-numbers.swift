/// https://leetcode.com/problems/product-of-the-last-k-numbers/
class ProductOfNumbers {
  private var storage: [Int] = []
  init() {}

  func add(_ num: Int) {
    if num == 0 {
      storage = []
    } else if let last = storage.last {
      storage.append(last*num)
    } else {
      storage.append(num)
    }
  }

  func getProduct(_ k: Int) -> Int {
    if k > storage.count {
      0
    } else if k == storage.count {
      storage[storage.count-1]
    } else {
      storage[storage.count-1]/storage[storage.count-1-k]
    }
  }
}
