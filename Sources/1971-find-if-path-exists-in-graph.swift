/// https://leetcode.com/problems/find-if-path-exists-in-graph/
struct FindIfPathExistsInGraph {
  func validPath(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
    let unionFind = UnionFind(count: n)
    for edge in edges {
      unionFind.union(edge[0], edge[1])
    }

    return unionFind.find(source) == unionFind.find(destination)
  }

  class UnionFind {
    private var root: [Int]
    private var rank: [Int]

    init(count: Int) {
      root = Array(0 ..< count)
      rank = [Int](repeating: 0, count: count)
    }

    func find(_ x: Int) -> Int {
      guard root[x] != x else { return x }
      root[x] = find(root[x])
      return root[x]
    }

    func union(_ x: Int, _ y: Int) {
      var rootX = find(x)
      var rootY = find(y)
      guard rootX != rootY else { return }
      if rank[rootX] > rank[rootY] {
        swap(&rootX, &rootY)
      }
      rank[rootY] += rank[rootX]
      root[rootX] = rootY
    }
  }
}
