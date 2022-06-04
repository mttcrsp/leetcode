/// https://leetcode.com/problems/car-fleet/
struct CarFleet {
  func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
    typealias Car = (position: Double, speed: Double)

    var cars: [Car] = []
    for i in position.indices {
      cars.append((Double(position[i]), Double(speed[i])))
    }

    cars.sort { lhs, rhs in
      lhs.position > rhs.position
    }

    var fleets = 0
    var previousTime: Double? {
      didSet { fleets += 1 }
    }

    for car in cars {
      let time = (Double(target) - car.position) / car.speed
      if let previousTime = previousTime, time <= previousTime {
        // do nothing
      } else {
        previousTime = time
      }
    }

    return fleets
  }
}
