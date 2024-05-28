/// https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/
struct MostStonesRemovedWithSameRowOrColumn {
  func removeStones(_ stones: [[Int]]) -> Int {
    var rows: [Int: [Int]] = [:]
    var cols: [Int: [Int]] = [:]
    for (i, stone) in stones.enumerated() {
      rows[stone[0], default: []].append(i)
      cols[stone[1], default: []].append(i)
    }

    let unionFind = UnionFind(count: stones.count)
    for (i, stone) in stones.enumerated() {
      for j in rows[stone[0], default: []] where j != i {
        unionFind.union(i, j)
      }
      for j in cols[stone[1], default: []] where j != i {
        unionFind.union(i, j)
      }
    }

    var counts: [Int: Int] = [:]
    for root in unionFind.root {
      counts[root, default: 0] += 1
    }

    var result = 0
    for (_, count) in counts {
      result += count-1
    }

    return result
  }

  final class UnionFind {
    var root: [Int]

    init(count: Int) {
      root = Array(0 ..< count)
    }

    func union(_ x: Int, _ y: Int) {
      let rootX = root[x]
      let rootY = root[y]
      guard rootX != rootY else { return }
      for i in root.indices {
        if root[i] == rootY {
          root[i] = rootX
        }
      }
    }
  }
}
