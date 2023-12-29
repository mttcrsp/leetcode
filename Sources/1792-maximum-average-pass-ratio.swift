/// https://leetcode.com/problems/maximum-average-pass-ratio/
import CoreFoundation

struct MaximumAveragePassRatio {
  func maxAverageRatio(_ groups: [[Int]], _ extraStudents: Int) -> Double {
    var callbacks = CFBinaryHeapCallBacks()
    callbacks.compare = { lhsPointer, rhsPointer, _ in
      let lhs = lhsPointer!.load(as: Group.self)
      let rhs = rhsPointer!.load(as: Group.self)
      if lhs.potential < rhs.potential {
        return .compareGreaterThan
      } else if lhs.potential > rhs.potential {
        return .compareLessThan
      } else {
        return .compareEqualTo
      }
    }

    let heap = CFBinaryHeapCreate(nil, 0, &callbacks, nil)

    for group in groups {
      let group = Group(pass: group[0], total: group[1])
      let pointer = UnsafeMutablePointer<Group>.allocate(capacity: 1)
      pointer.initialize(to: group)

      CFBinaryHeapAddValue(heap, pointer)
    }

    for _ in 0 ..< extraStudents {
      let group = CFBinaryHeapGetMinimum(heap).load(as: Group.self)
      let pointer = UnsafeMutablePointer<Group>.allocate(capacity: 1)
      pointer.initialize(to: group.addingBrilliantStudent())

      CFBinaryHeapRemoveMinimumValue(heap)
      CFBinaryHeapAddValue(heap, pointer)
    }

    let capacity = CFBinaryHeapGetCount(heap)
    let buffer = UnsafeMutablePointer<UnsafeRawPointer?>.allocate(capacity: capacity)
    CFBinaryHeapGetValues(heap, buffer)

    var result: Double = 0
    for i in 0 ..< capacity {
      let group = buffer[i]!.load(as: Group.self)
      result += group.percentage
    }
    return result/Double(groups.count)
  }

  private struct Group {
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
  }
}
