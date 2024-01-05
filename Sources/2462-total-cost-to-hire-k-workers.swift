import CoreFoundation

/// https://leetcode.com/problems/total-cost-to-hire-k-workers/
struct TotalCostToHireKWorkers {
  func totalCost(_ costs: [Int], _ k: Int, _ candidates: Int) -> Int {
    var lhs = candidates
    var rhs = costs.count-candidates-1
    var total = 0

    let heap = Heap()
    for index in 0 ..< lhs {
      heap.push(.init(cost: costs[index], index: index))
    }
    for index in max(lhs, rhs+1) ..< costs.count {
      heap.push(.init(cost: costs[index], index: index))
    }

    for _ in 1 ... k {
      let item = heap.pop()!
      if lhs <= rhs {
        if item.index < lhs {
          heap.push(.init(cost: costs[lhs], index: lhs)); lhs += 1
        } else {
          heap.push(.init(cost: costs[rhs], index: rhs)); rhs -= 1
        }
      }
      total += item.cost
    }

    return total
  }

  class Heap {
    struct Item: Comparable {
      var cost: Int
      var index: Int

      static func < (_ lhs: Self, _ rhs: Self) -> Bool {
        lhs.cost == rhs.cost ? lhs.index < rhs.index : lhs.cost < rhs.cost
      }
    }

    let heap: CFBinaryHeap?

    init() {
      var callBacks = CFBinaryHeapCallBacks()
      callBacks.compare = { lhsPointer, rhsPointer, _ in
        let lhs = lhsPointer!.load(as: Item.self)
        let rhs = rhsPointer!.load(as: Item.self)
        return lhs < rhs ? .compareLessThan : .compareGreaterThan
      }
      heap = CFBinaryHeapCreate(nil, 0, &callBacks, nil)
    }

    func push(_ item: Item) {
      let pointer = UnsafeMutablePointer<Item>.allocate(capacity: 1)
      pointer.initialize(to: item)
      CFBinaryHeapAddValue(heap, pointer)
    }

    func pop() -> Item? {
      guard let item = CFBinaryHeapGetMinimum(heap)?.load(as: Item.self) else { return nil }
      CFBinaryHeapRemoveMinimumValue(heap)
      return item
    }
  }
}
