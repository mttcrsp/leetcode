/// https://leetcode.com/problems/distance-between-bus-stops/
struct DistanceBetweenBusStops {
  func distanceBetweenBusStops(_ distance: [Int], _ start: Int, _ destination: Int) -> Int {
    var total1 = 0
    var total2 = 0

    var i = start
    while i != destination {
      total1 += distance[i]
      i = (i + 1) % distance.count
    }

    while i != start, total2 < total1 {
      total2 += distance[i]
      i = (i + 1) % distance.count
    }

    return min(total1, total2)
  }
}
