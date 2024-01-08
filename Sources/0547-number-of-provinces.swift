/// https://leetcode.com/problems/number-of-provinces/
struct NumberOfProvinces {
  func findCircleNum(_ isConnected: [[Int]]) -> Int {
    var provinces = 0
    var unvisited = Set(isConnected.indices)
    while let firstUnvisited = unvisited.first {
      provinces += 1

      var frontier: [Int] = [firstUnvisited]
      while let city = frontier.popLast() {
        guard unvisited.contains(city) else { continue }
        unvisited.remove(city)

        for otherCity in isConnected.indices {
          if city != otherCity, isConnected[city][otherCity] == 1 {
            frontier.append(otherCity)
          }
        }
      }
    }

    return provinces
  }
}
