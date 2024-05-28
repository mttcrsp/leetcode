/// https://leetcode.com/problems/number-of-provinces/
struct NumberOfProvinces {
  func findCircleNum(_ isConnected: [[Int]]) -> Int {
    let unionFind = UnionFind(count: isConnected.count)
    for i in 0 ..< isConnected.count-1 {
      for j in i+1 ..< isConnected.count {
        if isConnected[i][j] == 1 {
          unionFind.union(i, j)
        }
      }
    }

    return Set(unionFind.root).count
  }

  final class UnionFind {
    var root: [Int]

    init(count: Int) {
      root = Array(0 ..< count)
    }

    func find(_ x: Int) -> Int {
      root[x]
    }

    func union(_ x: Int, _ y: Int) {
      let rootX = find(x)
      let rootY = find(y)
      guard rootX != rootY else { return }
      for i in root.indices {
        if root[i] == rootY {
          root[i] = rootX
        }
      }
    }
  }
}
