struct AsteroidCollision {
  func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    var stack: [Int] = []

    for asteroid in asteroids {
      loop: while true {
        switch (stack.last, asteroid) {
        case let (lhs?, rhs) where lhs > 0 && rhs < 0 && abs(lhs) < abs(rhs):
          stack.removeLast()
        case let (lhs?, rhs) where lhs > 0 && rhs < 0 && abs(lhs) > abs(rhs):
          break loop
        case let (lhs?, rhs) where lhs > 0 && rhs < 0 && abs(lhs) == abs(rhs):
          stack.removeLast()
          break loop
        default:
          stack.append(asteroid)
          break loop
        }
      }
    }

    return stack
  }
}
