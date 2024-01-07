import HeapModule

/// https://leetcode.com/problems/total-cost-to-hire-k-workers/
struct TotalCostToHireKWorkers {
  func totalCost(_ costs: [Int], _ k: Int, _ candidates: Int) -> Int {
    var lhs = candidates
    var rhs = costs.count-candidates-1
    var total = 0

    var heap: Heap<Item> = []
    for index in 0 ..< lhs {
      heap.insert(.init(cost: costs[index], index: index))
    }
    for index in max(lhs, rhs+1) ..< costs.count {
      heap.insert(.init(cost: costs[index], index: index))
    }

    for _ in 1 ... k {
      let item = heap.removeMin()
      if lhs <= rhs {
        if item.index < lhs {
          heap.insert(.init(cost: costs[lhs], index: lhs)); lhs += 1
        } else {
          heap.insert(.init(cost: costs[rhs], index: rhs)); rhs -= 1
        }
      }
      total += item.cost
    }

    return total
  }

  struct Item: Comparable {
    var cost: Int
    var index: Int

    static func < (_ lhs: Self, _ rhs: Self) -> Bool {
      lhs.cost == rhs.cost ? lhs.index < rhs.index : lhs.cost < rhs.cost
    }
  }
}
