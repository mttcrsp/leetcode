import Collections

struct WallsAndGates {
  func wallsAndGates(_ rooms: inout [[Int]]) {
    let rows = rooms.count
    let cols = rooms[0].count

    var queue: Deque<[Int]> = []
    for row in rooms.indices {
      for col in rooms[row].indices {
        if rooms[row][col] == 0 {
          queue.append([row, col])
        }
      }
    }

    let directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
    while let location = queue.popFirst() {
      let distance = rooms[location[0]][location[1]]
      for direction in directions {
        var neighbor = location
        neighbor[0] += direction[0]
        neighbor[1] += direction[1]
        guard 
          neighbor[0] >= 0, neighbor[0] < rows,
          neighbor[1] >= 0, neighbor[1] < cols,
          rooms[neighbor[0]][neighbor[1]] == 2_147_483_647
        else { continue }
        rooms[neighbor[0]][neighbor[1]] = distance+1
        queue.append(neighbor)
      }
    }
  }
}
