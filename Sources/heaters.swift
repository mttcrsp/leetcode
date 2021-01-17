struct Heaters {
  func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
    let heaters = heaters.sorted()
    let houses = houses.sorted()

    var indices = (lhs: 0, rhs: 1)
    var radius = 0

    for house in houses {
      while
        indices.lhs < heaters.count,
        indices.rhs < heaters.count,
        heaters[indices.lhs].distance(to: house) >=
        heaters[indices.rhs].distance(to: house)
      {
        indices.lhs += 1
        indices.rhs += 1
      }

      let distance = heaters[indices.lhs].distance(to: house)
      if distance > radius {
        radius = distance
      }
    }

    return radius
  }
}

private extension Int {
  func distance(to other: Int) -> Int {
    abs(self - other)
  }
}
