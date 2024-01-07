import HeapModule

/// https://leetcode.com/problems/maximum-average-pass-ratio/
struct MaximumAveragePassRatio {
  func maxAverageRatio(_ groups: [[Int]], _ extraStudents: Int) -> Double {
    var heap: Heap<Group> = []
    for group in groups {
      heap.insert(Group(pass: group[0], total: group[1]))
    }
    for _ in 0 ..< extraStudents {
      heap.insert(heap.removeMax().addingBrilliantStudent())
    }

    var result: Double = 0
    while let group = heap.popMax() {
      result += group.percentage
    }

    return result/Double(groups.count)
  }

  private struct Group: Comparable {
    let pass, total: Int

    var percentage: Double {
      Double(pass)/Double(total)
    }

    var potential: Double {
      addingBrilliantStudent().percentage-percentage
    }

    func addingBrilliantStudent() -> Group {
      Group(pass: pass+1, total: total+1)
    }

    static func < (_ lhs: Group, _ rhs: Group) -> Bool {
      lhs.potential < rhs.potential
    }

    static func == (_ lhs: Group, _ rhs: Group) -> Bool {
      lhs.potential == rhs.potential
    }
  }
}
