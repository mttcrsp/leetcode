struct PossibleBipartition {
  func possibleBipartition(_ n: Int, _ dislikes: [[Int]]) -> Bool {
    enum Color { case red, blue }

    var colors = [Color?](repeating: nil, count: n + 1)
    var explored = [Bool](repeating: false, count: n + 1)
    var adjacency = [[Int]](repeating: [], count: n + 1)

    for dislike in dislikes {
      let vertex1 = dislike[0]
      let vertex2 = dislike[1]
      adjacency[vertex1].append(vertex2)
      adjacency[vertex2].append(vertex1)
    }

    var queue: [Int] = []

    for i in 1 ... n where !explored[i] {
      colors[i] = .red
      queue.append(i)

      while !queue.isEmpty {
        let vertex = queue.removeLast()

        guard !explored[vertex] else { continue }
        explored[vertex] = true

        for otherVertex in adjacency[vertex] {
          guard colors[otherVertex] != colors[vertex] else { return false }
          colors[otherVertex] = colors[vertex] == .red ? .blue : .red
          queue.append(otherVertex)
        }
      }
    }

    return true
  }
}
