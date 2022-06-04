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

    var precedingCar: Car?
    var fleets = 0

    for car2 in cars {
      guard let car1 = precedingCar else {
        precedingCar = car2
        fleets += 1
        continue
      }

      guard car2.speed > car1.speed else {
        precedingCar = car2
        fleets += 1
        continue
      }

      let time = (car1.position - car2.position) / (car2.speed - car1.speed)
      let catchupPosition = (time * car2.speed) + car2.position
      guard catchupPosition <= Double(target) else {
        precedingCar = car2
        fleets += 1
        continue
      }
    }

    return fleets
  }
}
