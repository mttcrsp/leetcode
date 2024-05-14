import Collections

/// https://leetcode.com/problems/k-closest-points-to-origin/
struct KClosestPointsToOrigin {
  func kClosest(_ points: [[Int]], _ K: Int) -> [[Int]] {
    var heap: Heap<Element> = []
    for point in points {
      heap.insert(Element(point: point))
      if heap.count > K {
        _ = heap.removeMax()
      }
    }

    var result: [[Int]] = []
    for _ in 0 ..< heap.count {
      result.append(heap.removeMin().point)
    }

    return result
  }

  struct Element: Comparable {
    let point: [Int]

    var distance: Double {
      let xSquared = point[0]*point[0]
      let ySquared = point[1]*point[1]
      return Double(xSquared+ySquared).squareRoot()
    }

    static func < (_ lhs: Element, _ rhs: Element) -> Bool {
      lhs.distance < rhs.distance
    }
  }
}
