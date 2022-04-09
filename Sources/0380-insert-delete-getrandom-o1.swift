/// https://leetcode.com/problems/insert-delete-getrandom-o1/
class RandomizedSet {
  private var store: Set<Int> = []

  init() {}

  func insert(_ val: Int) -> Bool {
    let (inserted, _) = store.insert(val)
    return inserted
  }

  func remove(_ val: Int) -> Bool {
    store.remove(val) != nil
  }

  func getRandom() -> Int {
    store.randomElement()!
  }
}
